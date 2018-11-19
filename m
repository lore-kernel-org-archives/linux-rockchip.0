From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: fix for mailbox read size
Date: Mon, 19 Nov 2018 15:18:33 +0100
Message-ID: <7088529.fTnRXqZmiP@phil>
References: <1541518625-25984-1-git-send-email-dkos@cadence.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1541518625-25984-1-git-send-email-dkos@cadence.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Damian Kos <dkos@cadence.com>
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

QW0gRGllbnN0YWcsIDYuIE5vdmVtYmVyIDIwMTgsIDE2OjM3OjA1IENFVCBzY2hyaWViIERhbWlh
biBLb3M6Cj4gU29tZSBvZiB0aGUgZnVuY3Rpb25zIChsaWtlIGNkbl9kcF9kcGNkX3JlYWQsIGNk
bl9kcF9nZXRfZWRpZF9ibG9jaykKPiBhbGxvdyB0byByZWFkIDY0S2lCLCBidXQgdGhlIGNkbl9k
cF9tYWlsYm94X3JlYWRfcmVjZWl2ZSwgdGhhdCBpcwo+IHVzZWQgYnkgdGhlbSwgY2FuIHJlYWQg
b25seSB1cCB0byAyNTUgYnl0ZXMgYXQgb25jZS4gTm9ybWFsbHksIGl0J3MKPiBub3QgYSBiaWcg
aXNzdWUgYXMgRFBDRCBvciBFRElEIHJlYWRzIHdvbid0IChob3BlZnVsbHkpIGV4Y2VlZCB0aGF0
Cj4gdmFsdWUuCj4gVGhlIHJlYWwgaXNzdWUgaGVyZSBpcyB0aGUgcmV2b2NhdGlvbiBsaXN0IHJl
YWQgZHVyaW5nIHRoZSBIRENQCj4gYXV0aGVudGljYXRpb24gcHJvY2Vzcy4gKHByb2JsZW1hdGlj
IHVzZSBjYXNlOgo+IGh0dHBzOi8vY2hyb21pdW0uZ29vZ2xlc291cmNlLmNvbS9jaHJvbWl1bW9z
L3RoaXJkX3BhcnR5L2tlcm5lbC8rL2Nocm9tZW9zLTQuNC9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvY2RuLWRwLXJlZy5jIzExNTIpCj4gVGhlIGxpc3QgY2FuIHJlYWNoIDEyNyo1KzQgYnl0ZXMg
KG51bSBkZXZzICogNSBieXRlcyBwZXIgSUQvQmtzdiArCj4gNCBieXRlcyBvZiBhbiBhZGRpdGlv
bmFsIGluZm8pLgo+IEluIG90aGVyIHdvcmRzIC0gQ1RTZXMgd2l0aCBIRENQIFJlcGVhdGVyIHdv
bid0IHBhc3Mgd2l0aG91dCB0aGlzCj4gZml4LiBPaCwgYW5kIHRoZSBkcml2ZXIgd2lsbCBtb3N0
IGxpa2VseSBzdG9wIHdvcmtpbmcgKGJlc3QgY2FzZQo+IHNjZW5hcmlvKS4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBEYW1pYW4gS29zIDxka29zQGNhZGVuY2UuY29tPgoKYXBwbGllZCB0byBkcm0tbWlz
Yy1uZXh0CgpUaGFua3MKSGVpa28KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcmktZGV2ZWwK
