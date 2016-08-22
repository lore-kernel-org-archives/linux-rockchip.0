From: Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH v3 1/5] drm/rockchip: sort registers define by chip's
 number
Date: Mon, 22 Aug 2016 16:30:38 -0400
Message-ID: <CAOw6vbJdBwUdg5Qww-autFH=HvvaM-uac7-mN+Ja7PEDiPoPnw@mail.gmail.com>
References: <loom.20160602T084340-509@post.gmane.org>
 <1471454452-2151-1-git-send-email-seanpaul@chromium.org>
 <57B57AFE.2030706@rock-chips.com> <20160818091141.GZ6232@phenom.ffwll.local>
 <57B587C0.5050007@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <57B587C0.5050007@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark yao <mark.yao@rock-chips.com>
Cc: Linux ARM Kernel <linux-arm-kernel@lists.infradead.org>, linux-rockchip@lists.infradead.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Tomasz Figa <tfiga@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

T24gVGh1LCBBdWcgMTgsIDIwMTYgYXQgNjowMiBBTSwgTWFyayB5YW8gPG1hcmsueWFvQHJvY2st
Y2hpcHMuY29tPiB3cm90ZToKPiBPbiAyMDE25bm0MDjmnIgxOOaXpSAxNzoxMSwgRGFuaWVsIFZl
dHRlciB3cm90ZToKPj4KPj4gT24gVGh1LCBBdWcgMTgsIDIwMTYgYXQgMDU6MDg6MTRQTSArMDgw
MCwgTWFyayB5YW8gd3JvdGU6Cj4+Pgo+Pj4gPkhpIFNlYW4KPj4+ID4KPj4+ID5UaGFua3MgZm9y
IHNlbmQgdjMgcGF0Y2ggZm9yIHJrMzM5OSB2b3Agc3VwcG9ydC4KPj4+ID4KPj4+ID5CdXQgc29y
cnkgZm9yIHRoYXQsIEkgaGFkIGNoYW5nZWQgbXkgbWluZCwgdGhvc2UgcGF0Y2hlcyBhcmUgZGVw
cmVjYXRlZCwKPj4+ID5JIGhhdmUgbmV3IHJrMzM5OSBwYXRjaCBvbiBteSBkb3duc3RyZWFtIGtl
cm5lbCwgSSB3aWxsIHVwc3RyZWFtIHNvb24uCj4+Cj4+IFd1dD8gSW1vIG1lcmdlIFNlYW4ncyBw
YXRjaCBoZXJlLCBhbmQgdGhlbiByZWJhc2UgeW91ciBkb3duc3RyZWFtIHBhdGNoZXMKPj4gb24g
dG9wIG9mIGl0LiBUaGF0IHlvdSBoYXZlIGEgZG93bnN0cmVhbSB0cmVlIHdoaWNoIGlzIG91dCBv
ZiBzeW5jIHdpdGgKPj4gdXBzdHJlYW0gc2hvdWxkbid0IGJlIGEgcmVhc29uIHRvIHN0YWxsIHVw
c3RyZWFtIGRldmVsb3BtZW50Lgo+PiAtRGFuaWVsCj4+Cj4gWWVhaCwgU29ycnkgZm9yIHRoYXQu
Cj4KPiBJbiBmYWN0LCBvbiBteSBkb3duc3RyZWFtIGtlcm5lbCwgYWxzbyBoYXZlIHRob3NlIHBh
dGNoZXMsIG15IG5ldyByazMzOTkKPiBwYXRjaGVzIGFyZSBiYXNlZCBvbiB0aGVtLAo+IGJ1dCB0
aGUgbmV3IHJrMzM5OSBwYXRjaGVzIHdpbGwgY292ZXIgdGhlIHRob3NlIHBhdGNoZXMsICBTZWFu
J3MgcGF0Y2hlcyBpcwo+IG9sZCB2ZXJzaW9uLgo+Cj4gSSBqdXN0IHdhbnQgdG8gZmFzdCBmb3J3
YXJkLCBkb24ndCB3YW50IHRvIHNlbmQgdHdvIHZlcnNpb24gZHJpdmVycyB0bwo+IHVwc3RyZWFt
Lgo+IGJ1dCBpZiB5b3UgYW5kIERhdmUgZmVlbCBvayBmb3IgdGhhdCwgSSBoYXZlIG5vIHByb2Js
ZW06LSkgLgo+Cj4gbWVyZ2VkIFNlYW4ncyBwYXRjaGVzIGFuZCB0aGVuIGFwcGx5IG5ldyB2ZXJz
aW9uIHBhdGNoZXMuCj4KCk9rLCBzbyBjYW4gSSBnZXQgYSByZXZpZXcvYWNrIGZvciB0aGVzZSBy
ZXZpc2VkIHBhdGNoZXMgdGhlbj8KU29tZXRoaW5nIGlzIGJldHRlciB0aGFuIG5vdGhpbmcsIGFu
ZCB0aGVyZSdzIGEgYnVuY2ggb2Ygc3R1ZmYgdGhhdApkZXBlbmRzIG9uIHRoZXNlIGNoYW5nZXMu
CgpTZWFuCgoKPiBUaGFua3MuCj4KPiAtLQo+IO+8rWFyayBZYW8KPgo+Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QK
ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
