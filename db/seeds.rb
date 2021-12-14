require 'csv'

CSV.foreach(Rails.root.join('lib/nasdaq_screener.csv'), headers: true) do |row|
  
  Stock.create({
    symbol: row[0],
    name: row[1],
    last_sale: row[2],
    net_change: row[3],
    percent_change: row[4],
    market_cap: row[5],
    country: row[6],
    ipo_year: row[7],
    volume: row[8],
    sector: row[9],
    industry: row[10]
  })
end
