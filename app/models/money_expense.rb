class MoneyExpense < ApplicationRecord
    CATEGORIES = [
        'Sonstige',
        'Einkauf / Supermarkt',
        'Einkauf / Ausstattung',
        'Einkauf / Geschenke',
        'Veranstaltung / Auswärts gegessen',
        'Veranstaltung / Essen bestellt',
        'Veranstaltung / Kultur',
        'Kraftstoff'
    ]
    validates :price, numericality: { only_integer: true, greater_than: 0 }
end
