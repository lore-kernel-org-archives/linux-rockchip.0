From: Philipp Richter <richterphilipp.pops@gmail.com>
Subject: Re: aarch64 Kernel Panic Asynchronous SError Interrupt on large file
 IO
Date: Fri, 16 Aug 2019 20:54:36 +0200
Message-ID: <CA+Vb7hpjX=yzVJj+BguvzwtyASCGUTwx_OXWfBuEoLO_RicMBQ@mail.gmail.com>
References: <CA+Vb7hpe_USzdCuTBHd8V-t6YeQ0oApiBrvM-D43JuhJda6eyQ@mail.gmail.com>
 <20190815122151.bg7it6ptxwcn2vif@willie-the-truck>
 <8253b02c-0431-6b01-6af4-6132eb992925@arm.com>
 <CA+Vb7hpi=pCC9viiof8y85Kw_vCawWQ0B6kGFALgxtZfCKoaTw@mail.gmail.com>
 <CA+Vb7hqPvDtv0ahjxa_gM68qsws6-dmtiOPmG6-WB+HZEC=4aw@mail.gmail.com>
 <2facb3cb-388a-87ee-4d87-717dd65825ae@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <2facb3cb-388a-87ee-4d87-717dd65825ae@arm.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Robin Murphy <robin.murphy@arm.com>
Cc: heiko@sntech.de, catalin.marinas@arm.com, vicencb@gmail.com, linux-rockchip@lists.infradead.org, andre.przywara@arm.com, Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gRnJpLCAxNiBBdWcgMjAxOSBhdCAxNDowMSwgUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlA
YXJtLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIGRvZXMgc3RhcnQgdG8gc21lbGwgbGlrZSBzb21lIGlz
c3VlIHdpdGggdGhhdCBwYXJ0aWN1bGFyIGFyZWEgb2YKPiBwaHlzaWNhbCBtZW1vcnkgLSBlaXRo
ZXIgYmVjYXVzZSBpdCdzIGJlZW4gbWFya2VkIGFzIFNlY3VyZS1vbmx5IGJ5Cj4gZmlybXdhcmUg
YW5kIHRoZSBjb250cm9sbGVyIGNvbmZpZ3VyZWQgdG8gYWJvcnQgTm9uLVNlY3VyZSBhY2Nlc3Nl
cywgb3IKPiBwb3NzaWJseSBiZWNhdXNlIG9mIGFuIGFjdHVhbCBEUkFNIGZhaWx1cmUuIFRoZSBu
ZXh0IHRoaW5nIEknZCBkbyBpcwo+IGhhdmUgYSBwbGF5IGFyb3VuZCB3aXRoIHRoZSAibWVtdGVz
dD0uLi4iIGtlcm5lbCBwYXJhbWV0ZXIgdG8gc2VlIGlmCj4gdGhhdCBjYW4gY29uc2lzdGVudGx5
IGZpbmQgYSBwcm9ibGVtLCBhbmQgc2VlIGlmIHRoZSBmaXJtd2FyZSBjaGFuZ2UKPiB0aGF0IEhl
aWtvIHBvaW50ZWQgb3V0IG1ha2VzIGFueSBkaWZmZXJlbmNlLgo+Cj4gUm9iaW4uCgpUaGFuayB5
b3UgdmVyeSBtdWNoIGZvciB0aGlzIGluc2lnaHQuCgpJIGNvbXBpbGVkIHUtYm9vdCB3aXRoIHRo
ZSBwYXRjaCB0aGF0IEhlaWtvIFN0w7xibmVyIGxpbmtlZCB0byBhbmQKcmV3cm90ZSB0aGUgaW1h
Z2VzIHRvIHRoZSB0YXJnZXQgbG9jYXRpb25zIGJ1dCB0aGlzIGRpZG4ndCByZXNvbHZlIHRoZQpw
cm9ibGVtLgpJJ2xsIHRyeSBzb21lIG1lbXRlc3RzIGJ1dCB0aGUgc3RvY2sgQXJjaGxpbnV4IEFS
TSBrZXJuZWwgZG9lcyBub3QKaGF2ZSBpdCBlbmFibGVkIHNvIEknbGwgbmVlZCB0byBjb21waWxl
IGl0IGluIG15c2VsZiB0aGVuIEkgZ3Vlc3MuCgpSZWdhcmRzLApQaGlsaXBwIFJpY2h0ZXIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
