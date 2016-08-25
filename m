From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH v3 1/5] drm/rockchip: sort registers define by chip's
 number
Date: Thu, 25 Aug 2016 10:25:43 +0800
Message-ID: <57BE5727.8070100@rock-chips.com>
References: <loom.20160602T084340-509@post.gmane.org>
 <1471454452-2151-1-git-send-email-seanpaul@chromium.org>
 <57B57AFE.2030706@rock-chips.com> <20160818091141.GZ6232@phenom.ffwll.local>
 <57B587C0.5050007@rock-chips.com>
 <CAOw6vbJdBwUdg5Qww-autFH=HvvaM-uac7-mN+Ja7PEDiPoPnw@mail.gmail.com>
 <57BB9B87.2040406@rock-chips.com>
 <CAOw6vbKnHZK4H_MHOE+iQ=a_YNJQen_F4PQ278B4N51OyxFc9Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <CAOw6vbKnHZK4H_MHOE+iQ=a_YNJQen_F4PQ278B4N51OyxFc9Q@mail.gmail.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Sean Paul <seanpaul@chromium.org>
Cc: Linux ARM Kernel <linux-arm-kernel@lists.infradead.org>, linux-rockchip@lists.infradead.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Tomasz Figa <tfiga@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxNuW5tDA45pyIMjPml6UgMjE6MTMsIFNlYW4gUGF1bCB3cm90ZToKPiBPbiBNb24sIEF1
ZyAyMiwgMjAxNiBhdCA4OjQwIFBNLCBNYXJrIHlhbyA8bWFyay55YW9Acm9jay1jaGlwcy5jb20+
IHdyb3RlOgo+PiBPbiAyMDE25bm0MDjmnIgyM+aXpSAwNDozMCwgU2VhbiBQYXVsIHdyb3RlOgo+
Pj4gT24gVGh1LCBBdWcgMTgsIDIwMTYgYXQgNjowMiBBTSwgTWFyayB5YW8gPG1hcmsueWFvQHJv
Y2stY2hpcHMuY29tPiB3cm90ZToKPj4+PiBPbiAyMDE25bm0MDjmnIgxOOaXpSAxNzoxMSwgRGFu
aWVsIFZldHRlciB3cm90ZToKPj4+Pj4gT24gVGh1LCBBdWcgMTgsIDIwMTYgYXQgMDU6MDg6MTRQ
TSArMDgwMCwgTWFyayB5YW8gd3JvdGU6Cj4+Pj4+Pj4gSGkgU2Vhbgo+Pj4+Pj4+Cj4+Pj4+Pj4g
VGhhbmtzIGZvciBzZW5kIHYzIHBhdGNoIGZvciByazMzOTkgdm9wIHN1cHBvcnQuCj4+Pj4+Pj4K
Pj4+Pj4+PiBCdXQgc29ycnkgZm9yIHRoYXQsIEkgaGFkIGNoYW5nZWQgbXkgbWluZCwgdGhvc2Ug
cGF0Y2hlcyBhcmUKPj4+Pj4+PiBkZXByZWNhdGVkLAo+Pj4+Pj4+IEkgaGF2ZSBuZXcgcmszMzk5
IHBhdGNoIG9uIG15IGRvd25zdHJlYW0ga2VybmVsLCBJIHdpbGwgdXBzdHJlYW0gc29vbi4KPj4+
Pj4gV3V0PyBJbW8gbWVyZ2UgU2VhbidzIHBhdGNoIGhlcmUsIGFuZCB0aGVuIHJlYmFzZSB5b3Vy
IGRvd25zdHJlYW0KPj4+Pj4gcGF0Y2hlcwo+Pj4+PiBvbiB0b3Agb2YgaXQuIFRoYXQgeW91IGhh
dmUgYSBkb3duc3RyZWFtIHRyZWUgd2hpY2ggaXMgb3V0IG9mIHN5bmMgd2l0aAo+Pj4+PiB1cHN0
cmVhbSBzaG91bGRuJ3QgYmUgYSByZWFzb24gdG8gc3RhbGwgdXBzdHJlYW0gZGV2ZWxvcG1lbnQu
Cj4+Pj4+IC1EYW5pZWwKPj4+Pj4KPj4+PiBZZWFoLCBTb3JyeSBmb3IgdGhhdC4KPj4+Pgo+Pj4+
IEluIGZhY3QsIG9uIG15IGRvd25zdHJlYW0ga2VybmVsLCBhbHNvIGhhdmUgdGhvc2UgcGF0Y2hl
cywgbXkgbmV3IHJrMzM5OQo+Pj4+IHBhdGNoZXMgYXJlIGJhc2VkIG9uIHRoZW0sCj4+Pj4gYnV0
IHRoZSBuZXcgcmszMzk5IHBhdGNoZXMgd2lsbCBjb3ZlciB0aGUgdGhvc2UgcGF0Y2hlcywgIFNl
YW4ncyBwYXRjaGVzCj4+Pj4gaXMKPj4+PiBvbGQgdmVyc2lvbi4KPj4+Pgo+Pj4+IEkganVzdCB3
YW50IHRvIGZhc3QgZm9yd2FyZCwgZG9uJ3Qgd2FudCB0byBzZW5kIHR3byB2ZXJzaW9uIGRyaXZl
cnMgdG8KPj4+PiB1cHN0cmVhbS4KPj4+PiBidXQgaWYgeW91IGFuZCBEYXZlIGZlZWwgb2sgZm9y
IHRoYXQsIEkgaGF2ZSBubyBwcm9ibGVtOi0pIC4KPj4+Pgo+Pj4+IG1lcmdlZCBTZWFuJ3MgcGF0
Y2hlcyBhbmQgdGhlbiBhcHBseSBuZXcgdmVyc2lvbiBwYXRjaGVzLgo+Pj4+Cj4+PiBPaywgc28g
Y2FuIEkgZ2V0IGEgcmV2aWV3L2FjayBmb3IgdGhlc2UgcmV2aXNlZCBwYXRjaGVzIHRoZW4/Cj4+
PiBTb21ldGhpbmcgaXMgYmV0dGVyIHRoYW4gbm90aGluZywgYW5kIHRoZXJlJ3MgYSBidW5jaCBv
ZiBzdHVmZiB0aGF0Cj4+PiBkZXBlbmRzIG9uIHRoZXNlIGNoYW5nZXMuCj4+Pgo+Pj4gU2Vhbgo+
PiBZZXMsIEJ1dCBJIG1pc3MgeW91ciBbUEFUQ0ggdjMgMC81XSBhbmQgW1BBVENIIHYzIDQvNV0u
IGRvIHlvdSBtZWFuIHRoZSBsb3N0Cj4+IHBhdGNoZXMgdXNlIHYyIHZlcnNpb24/Cj4+Cj4gWWVz
LCB2MiA0LzUgd2FzIHJldmlld2VkIGFzLWlzLCBzbyBJIGp1c3QgYXBwbGllZCBpdC4KPgo+IFNl
YW4KQXBwbGllZCB0aGlzIHNlcmllcyB0byBteSBkcm0tbmV4dC4KClRoYW5rcy4KCj4+Pgo+Pj4+
IFRoYW5rcy4KPj4+Pgo+Pj4+IC0tCj4+Pj4g77ytYXJrIFlhbwo+Pj4+Cj4+Pj4KPj4+Cj4+Cj4+
IC0tCj4+IO+8rWFyayBZYW8KPj4KPj4KPgo+CgoKLS0gCu+8rWFyayBZYW8KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBs
aXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
