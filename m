From: Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH v3 1/5] drm/rockchip: sort registers define by chip's
 number
Date: Tue, 23 Aug 2016 09:13:33 -0400
Message-ID: <CAOw6vbKnHZK4H_MHOE+iQ=a_YNJQen_F4PQ278B4N51OyxFc9Q@mail.gmail.com>
References: <loom.20160602T084340-509@post.gmane.org>
 <1471454452-2151-1-git-send-email-seanpaul@chromium.org>
 <57B57AFE.2030706@rock-chips.com> <20160818091141.GZ6232@phenom.ffwll.local>
 <57B587C0.5050007@rock-chips.com>
 <CAOw6vbJdBwUdg5Qww-autFH=HvvaM-uac7-mN+Ja7PEDiPoPnw@mail.gmail.com>
 <57BB9B87.2040406@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <57BB9B87.2040406@rock-chips.com>
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

T24gTW9uLCBBdWcgMjIsIDIwMTYgYXQgODo0MCBQTSwgTWFyayB5YW8gPG1hcmsueWFvQHJvY2st
Y2hpcHMuY29tPiB3cm90ZToKPiBPbiAyMDE25bm0MDjmnIgyM+aXpSAwNDozMCwgU2VhbiBQYXVs
IHdyb3RlOgo+Pgo+PiBPbiBUaHUsIEF1ZyAxOCwgMjAxNiBhdCA2OjAyIEFNLCBNYXJrIHlhbyA8
bWFyay55YW9Acm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Pj4KPj4+IE9uIDIwMTblubQwOOaciDE4
5pelIDE3OjExLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+Pj4+Cj4+Pj4gT24gVGh1LCBBdWcgMTgs
IDIwMTYgYXQgMDU6MDg6MTRQTSArMDgwMCwgTWFyayB5YW8gd3JvdGU6Cj4+Pj4+Pgo+Pj4+Pj4g
SGkgU2Vhbgo+Pj4+Pj4KPj4+Pj4+IFRoYW5rcyBmb3Igc2VuZCB2MyBwYXRjaCBmb3IgcmszMzk5
IHZvcCBzdXBwb3J0Lgo+Pj4+Pj4KPj4+Pj4+IEJ1dCBzb3JyeSBmb3IgdGhhdCwgSSBoYWQgY2hh
bmdlZCBteSBtaW5kLCB0aG9zZSBwYXRjaGVzIGFyZQo+Pj4+Pj4gZGVwcmVjYXRlZCwKPj4+Pj4+
IEkgaGF2ZSBuZXcgcmszMzk5IHBhdGNoIG9uIG15IGRvd25zdHJlYW0ga2VybmVsLCBJIHdpbGwg
dXBzdHJlYW0gc29vbi4KPj4+Pgo+Pj4+IFd1dD8gSW1vIG1lcmdlIFNlYW4ncyBwYXRjaCBoZXJl
LCBhbmQgdGhlbiByZWJhc2UgeW91ciBkb3duc3RyZWFtCj4+Pj4gcGF0Y2hlcwo+Pj4+IG9uIHRv
cCBvZiBpdC4gVGhhdCB5b3UgaGF2ZSBhIGRvd25zdHJlYW0gdHJlZSB3aGljaCBpcyBvdXQgb2Yg
c3luYyB3aXRoCj4+Pj4gdXBzdHJlYW0gc2hvdWxkbid0IGJlIGEgcmVhc29uIHRvIHN0YWxsIHVw
c3RyZWFtIGRldmVsb3BtZW50Lgo+Pj4+IC1EYW5pZWwKPj4+Pgo+Pj4gWWVhaCwgU29ycnkgZm9y
IHRoYXQuCj4+Pgo+Pj4gSW4gZmFjdCwgb24gbXkgZG93bnN0cmVhbSBrZXJuZWwsIGFsc28gaGF2
ZSB0aG9zZSBwYXRjaGVzLCBteSBuZXcgcmszMzk5Cj4+PiBwYXRjaGVzIGFyZSBiYXNlZCBvbiB0
aGVtLAo+Pj4gYnV0IHRoZSBuZXcgcmszMzk5IHBhdGNoZXMgd2lsbCBjb3ZlciB0aGUgdGhvc2Ug
cGF0Y2hlcywgIFNlYW4ncyBwYXRjaGVzCj4+PiBpcwo+Pj4gb2xkIHZlcnNpb24uCj4+Pgo+Pj4g
SSBqdXN0IHdhbnQgdG8gZmFzdCBmb3J3YXJkLCBkb24ndCB3YW50IHRvIHNlbmQgdHdvIHZlcnNp
b24gZHJpdmVycyB0bwo+Pj4gdXBzdHJlYW0uCj4+PiBidXQgaWYgeW91IGFuZCBEYXZlIGZlZWwg
b2sgZm9yIHRoYXQsIEkgaGF2ZSBubyBwcm9ibGVtOi0pIC4KPj4+Cj4+PiBtZXJnZWQgU2Vhbidz
IHBhdGNoZXMgYW5kIHRoZW4gYXBwbHkgbmV3IHZlcnNpb24gcGF0Y2hlcy4KPj4+Cj4+IE9rLCBz
byBjYW4gSSBnZXQgYSByZXZpZXcvYWNrIGZvciB0aGVzZSByZXZpc2VkIHBhdGNoZXMgdGhlbj8K
Pj4gU29tZXRoaW5nIGlzIGJldHRlciB0aGFuIG5vdGhpbmcsIGFuZCB0aGVyZSdzIGEgYnVuY2gg
b2Ygc3R1ZmYgdGhhdAo+PiBkZXBlbmRzIG9uIHRoZXNlIGNoYW5nZXMuCj4+Cj4+IFNlYW4KPgo+
IFllcywgQnV0IEkgbWlzcyB5b3VyIFtQQVRDSCB2MyAwLzVdIGFuZCBbUEFUQ0ggdjMgNC81XS4g
ZG8geW91IG1lYW4gdGhlIGxvc3QKPiBwYXRjaGVzIHVzZSB2MiB2ZXJzaW9uPwo+CgpZZXMsIHYy
IDQvNSB3YXMgcmV2aWV3ZWQgYXMtaXMsIHNvIEkganVzdCBhcHBsaWVkIGl0LgoKU2VhbgoKPgo+
Pgo+Pgo+Pj4gVGhhbmtzLgo+Pj4KPj4+IC0tCj4+PiDvvK1hcmsgWWFvCj4+Pgo+Pj4KPj4KPj4K
Pgo+Cj4gLS0KPiDvvK1hcmsgWWFvCj4KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcmktZGV2ZWwK
