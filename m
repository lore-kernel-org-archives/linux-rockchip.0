From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v3 18/18] rockchip: dts: rk3399: nanopi-neo4: Use
 DDR3-1866 dtsi
Date: Tue, 16 Jul 2019 15:47:48 +0800
Message-ID: <0646aaf8-6ff2-fa18-23e2-596cd686b8b2@rock-chips.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-19-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190715182856.21688-19-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IFVzZSBERFIzLTE4
NjYgMkdCIGRkciB0aW1pbmdzIGR0c2kgZm9yIDFHQiBOYW5vUGkgTmVvNCBib2FyZC4KPgo+IFNp
bmNlIHNkcmFtIHJrMzM5OSBzdXBwb3J0IGR5bmFtaWMgc3RyaWRlIGFuZCByYW5rIGRldGVjdGlv
biBpdAo+IGNhbiBhYmxlIHRvIGRldGVjdCAxR0IgZGRyIGV2ZW50b3VnaCB0aGUgdGltaW5ncyBh
cmUgbWVhbnQgZm9yCj4gZHVhbCBjaGFubmVsLCAyR0Igc2l6ZS4KPgo+IEJvb3RjaGFpbiBhZnRl
ciBhbmQgYmVmb3JlIHRoaXMgY2hhbmdlIGFyZToKPgo+ICAgVFBMIC0+IFNQTCAtPiBVLUJvb3Qg
cHJvcGVyCj4KPiAgIHJrYmluIC0+IFNQTCAtPiBVLUJvb3QgcHJvcGVyCj4KPiBUaGlzIGNlcnRh
aW5seSBmaXggdGhlIHNlY29uZCBjaGFubmVsIGRhdGEgdHJhaW5pbmcgaW5pdGlhbGl6YXRpb24K
PiBzaW5jZSB3ZSBoYXZlIGR5bmFtaWMgcmFuaywgc3RyaWRlIHdoZXJlIHNlY29uZCBjaGFubmVs
IGNhcGFiaWxpdGllcwo+IGFyZSBjbGVhciBvciBtZW1zZXQgdG8gMC4KPgo+IFNpZ25lZC1vZmYt
Ynk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgoKUmV2aWV3ZWQtYnk6
IEtldmVyIFlhbmcgPEtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2
ZXIKPiAtLS0KPiAgIGFyY2gvYXJtL2R0cy9yazMzOTktbmFub3BpLW5lbzQtdS1ib290LmR0c2kg
fCAxICsKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Cj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2R0cy9yazMzOTktbmFub3BpLW5lbzQtdS1ib290LmR0c2kgYi9hcmNoL2FybS9k
dHMvcmszMzk5LW5hbm9waS1uZW80LXUtYm9vdC5kdHNpCj4gaW5kZXggN2QyMjUyOGY0OS4uZWIw
YWNhNDc1OCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9kdHMvcmszMzk5LW5hbm9waS1uZW80LXUt
Ym9vdC5kdHNpCj4gKysrIGIvYXJjaC9hcm0vZHRzL3JrMzM5OS1uYW5vcGktbmVvNC11LWJvb3Qu
ZHRzaQo+IEBAIC00LDMgKzQsNCBAQAo+ICAgICovCj4gICAKPiAgICNpbmNsdWRlICJyazMzOTkt
bmFub3BpNC11LWJvb3QuZHRzaSIKPiArI2luY2x1ZGUgInJrMzM5OS1zZHJhbS1kZHIzLTE4NjYu
ZHRzaSIKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
