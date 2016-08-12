From: Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH 1/2] drm: Introduce DRM_DEV_* log messages
Date: Fri, 12 Aug 2016 13:23:15 -0400
Message-ID: <CAOw6vbJ+CO8uV34jzejycnAvWj7VCZ0hgDPMU4RFRp6xrCcMPg@mail.gmail.com>
References: <1471021254-2563-1-git-send-email-seanpaul@chromium.org>
 <1471021254-2563-2-git-send-email-seanpaul@chromium.org>
 <20160812171344.GF15011@nuc-i3427.alporthouse.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20160812171344.GF15011@nuc-i3427.alporthouse.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Chris Wilson <chris@chris-wilson.co.uk>, Sean Paul <seanpaul@chromium.org>, dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip@lists.infradead.org, =?UTF-8?B?5aea5pm65oOF?= <mark.yao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

T24gRnJpLCBBdWcgMTIsIDIwMTYgYXQgMToxMyBQTSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+IHdyb3RlOgo+IE9uIEZyaSwgQXVnIDEyLCAyMDE2IGF0IDAxOjAwOjUz
UE0gLTA0MDAsIFNlYW4gUGF1bCB3cm90ZToKPj4gVGhpcyBwYXRjaCBjb25zb2xvZGF0ZXMgYWxs
IHRoZSB2YXJpb3VzIGxvZyBmdW5jdGlvbnMvbWFjcm9zIGludG8KPj4gb25lIHViZXIgZnVuY3Rp
b24sIGRybV9sb2cuIEl0IGFsc28gaW50cm9kdWNlcyBzb21lIG5ldyBEUk1fREVWXyoKPj4gdmFy
aWFudHMgdGhhdCBwcmludCB0aGUgZGV2aWNlIG5hbWUgdG8gZGVsaW5lYXRlIG11bHRpcGxlIGRl
dmljZXMKPj4gb2YgdGhlIHNhbWUgdHlwZS4KPgo+PiArdm9pZCBkcm1fbG9nKGNvbnN0IHN0cnVj
dCBkZXZpY2UgKmRldiwgY29uc3QgY2hhciAqbGV2ZWwsIHVuc2lnbmVkIGludCBjYXRlZ29yeSwK
Pj4gKyAgICAgICAgICBjb25zdCBjaGFyICpmdW5jdGlvbl9uYW1lLCBjb25zdCBjaGFyICpwcmVm
aXgsCj4+ICsgICAgICAgICAgY29uc3QgY2hhciAqZm9ybWF0LCAuLi4pCj4+ICB7Cj4+ICsgICAg
IGlmIChkZXYpCj4+ICsgICAgICAgICAgICAgcHJpbnRrKCIlcyVzIFsiIERSTV9OQU1FICI6JXNd
JXMgJXBWIiwgbGV2ZWwsCj4+ICsgICAgICAgICAgICAgICAgICAgIGRldl9uYW1lKGRldiksIGZ1
bmN0aW9uX25hbWUsIHByZWZpeCwgJnZhZik7Cj4+ICsgICAgIGVsc2UKPj4gKyAgICAgICAgICAg
ICBwcmludGsoIiVzWyIgRFJNX05BTUUgIjolc10lcyAlcFYiLCBsZXZlbCwgZnVuY3Rpb25fbmFt
ZSwKPj4gKyAgICAgICAgICAgICAgICAgICAgcHJlZml4LCAmdmFmKTsKPgo+IE15IGhvcGUgd2Fz
IHRoYXQgd2Ugd291bGQgbWlncmF0ZSB0b3dhcmRzIGRldl9wcmludGsgc28gdGhhdCBvdXIgbG9n
Cj4gbWVzc2FnZXMgd291bGQgaGF2ZSBiZXR0ZXIgY29uZm9ybWl0eSwgZXNwZWNpYWxseSBiZXR3
ZWVuIG91ciBtZXNzYWdlcwo+IGFuZCB0aG9zZSBwcmludGVkIGJ5IHN1YnN5c3RlbXMgb24gb3Vy
IGJlaGFsZiAodXNpbmcgb3VyIHN0cnVjdCBkZXZpY2UpLgoKWWVwLCB0aGF0IG1ha2VzIHNlbnNl
LCB2MiBpbmNvbWluZy4KClNlYW4KCj4gLUNocmlzCj4KPiAtLQo+IENocmlzIFdpbHNvbiwgSW50
ZWwgT3BlbiBTb3VyY2UgVGVjaG5vbG9neSBDZW50cmUKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpLWRldmVsCg==
