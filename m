From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: cancel pending vblanks on close
Date: Mon, 14 Mar 2016 10:40:06 +0800
Message-ID: <56E62486.7050700@rock-chips.com>
References: <1457716877-427-1-git-send-email-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1457716877-427-1-git-send-email-john@metanate.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: John Keeping <john@metanate.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxNuW5tDAz5pyIMTLml6UgMDE6MjEsIEpvaG4gS2VlcGluZyB3cm90ZToKPiBXaGVuIGNs
b3NpbmcgdGhlIERSTSBkZXZpY2Ugd2hpbGUgYSB2YmxhbmsgaXMgcGVuZGluZywgd2UgYWNjZXNz
Cj4gZmlsZV9wcml2IGFmdGVyIGl0IGhhcyBiZWVuIGZyZWUnZCwgd2hpY2ggZ2l2ZXM6Cj4KPiAg
ICBVbmFibGUgdG8gaGFuZGxlIGtlcm5lbCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UgYXQgdmly
dHVhbCBhZGRyZXNzIDAwMDAwMDAwCj4gICAgLi4uCj4gICAgUEMgaXMgYXQgX19saXN0X2FkZCsw
eDVjLzB4ZTgKPiAgICBMUiBpcyBhdCBzZW5kX3ZibGFua19ldmVudCsweDU0LzB4MWYwCj4gICAg
Li4uCj4gICAgWzxjMDI5NTJlOD5dIChfX2xpc3RfYWRkKSBmcm9tIFs8YzAzMWE3YjQ+XSAoc2Vu
ZF92YmxhbmtfZXZlbnQrMHg1NC8weDFmMCkKPiAgICBbPGMwMzFhNzYwPl0gKHNlbmRfdmJsYW5r
X2V2ZW50KSBmcm9tIFs8YzAzMWE5YzA+XSAoZHJtX3NlbmRfdmJsYW5rX2V2ZW50KzB4NzAvMHg3
OCkKPiAgICBbPGMwMzFhOTUwPl0gKGRybV9zZW5kX3ZibGFua19ldmVudCkgZnJvbSBbPGMwMzFh
OWY4Pl0gKGRybV9jcnRjX3NlbmRfdmJsYW5rX2V2ZW50KzB4MzAvMHgzNCkKPiAgICBbPGMwMzFh
OWM4Pl0gKGRybV9jcnRjX3NlbmRfdmJsYW5rX2V2ZW50KSBmcm9tIFs8YzAzMzlhZDg+XSAodm9w
X2lzcisweDIyNC8weDI4YykKPiAgICBbPGMwMzM5OGI0Pl0gKHZvcF9pc3IpIGZyb20gWzxjMDA4
MTc4MD5dIChoYW5kbGVfaXJxX2V2ZW50X3BlcmNwdSsweDEyYy8weDNlNCkKPgo+IFRoaXMgY2Fu
IGJlIHRyaWdnZXJlZCBzb21ld2hhdCByZWxpYWJseSB3aXRoOgo+Cj4gCW1vZGV0ZXN0IC1NIHJv
Y2tjaGlwIC12IC1zIC4uLgo+Cj4gQWRkIGEgcHJlY2xvc2UgaG9vayB0byB0aGUgZHJpdmVyIHNv
IHRoYXQgd2UgY2FuIGRpc2NhcmQgYW55IHBlbmRpbmcKPiB2YmxhbmsgZXZlbnRzIHdoZW4gdGhl
IGRldmljZSBpcyBjbG9zZWQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKb2huIEtlZXBpbmcgPGpvaG5A
bWV0YW5hdGUuY29tPgoKTG9va3MgZ29vZCBmb3IgbWUsIGFwcGxpZWQgaW50byBteSBkcm0tZml4
ZXMuCgpUaGFua3MgZm9yIHRoZSBmaXguCgotLSAK77ytYXJrIFlhbwoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QK
ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
