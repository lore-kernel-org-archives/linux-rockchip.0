From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v3 21/57] ram: rk3399: Add lpddr4 rank mask for ca training
Date: Tue, 16 Jul 2019 21:11:41 +0800
Message-ID: <ba33907c-080a-1d82-eb2c-456deb7870bb@rock-chips.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-22-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190716115745.12585-22-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCByYW5rX21h
c2sgYmFzZWQgb24gdGhlIHJhbmsgbnVtYmVyIGZvciBscGRkcjQuCj4KPiBUaGlzIHdvdWxkIGtl
ZXAgdGhlIGNhIGRhdGEgdHJhaW5pbmcgbG9vcCBiYXNlZCBvbiB0aGUKPiBkZXNpcmVkIHJhbmsg
bWFzayB2YWx1ZSBpbnN0ZWFkIG9mIGxvb3BpbmcgZm9yIGFsbCB2YWx1ZXMuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBZb3VNaW4gQ2hlbiA8Y3ltQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEtl
dmVyIFlhbmcgPEtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIK
PiAtLS0KPiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIHwgNSArKysrLQo+
ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9y
YW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBpbmRleCBhNDk2NzcyODVkLi44ZWNjM2ExYjc0
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysr
IGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBAQCAtNjg3LDcgKzY4Nywx
MCBAQCBzdGF0aWMgaW50IGRhdGFfdHJhaW5pbmdfY2EoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAq
Y2hhbiwgdTMyIGNoYW5uZWwsCj4gICAJLyogY2xlYXIgaW50ZXJydXB0LFBJXzE3NSBQSV9JTlRf
QUNLOldSOjA6MTcgKi8KPiAgIAl3cml0ZWwoMHgwMDAwM2Y3YywgKCZkZW5hbGlfcGlbMTc1XSkp
Owo+ICAgCj4gLQlyYW5rX21hc2sgPSAocmFuayA9PSAxKSA/IDB4MSA6IDB4MzsKPiArCWlmIChw
YXJhbXMtPmJhc2UuZHJhbXR5cGUgPT0gTFBERFI0KQo+ICsJCXJhbmtfbWFzayA9IChyYW5rID09
IDEpID8gMHg1IDogMHhmOwo+ICsJZWxzZQo+ICsJCXJhbmtfbWFzayA9IChyYW5rID09IDEpID8g
MHgxIDogMHgzOwo+ICAgCj4gICAJZm9yIChpID0gMDsgaSA8IDQ7IGkrKykgewo+ICAgCQlpZiAo
IShyYW5rX21hc2sgJiAoMSA8PCBpKSkpCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
