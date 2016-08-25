From: Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH v3 1/5] drm/rockchip: sort registers define by chip's
 number
Date: Thu, 25 Aug 2016 13:17:45 -0400
Message-ID: <CAOw6vbJzK40Jm38zoXE73yCXOTjOE-Pz=sc47asTRY3cG1=kPw@mail.gmail.com>
References: <loom.20160602T084340-509@post.gmane.org>
 <1471454452-2151-1-git-send-email-seanpaul@chromium.org>
 <57B57AFE.2030706@rock-chips.com> <20160818091141.GZ6232@phenom.ffwll.local>
 <57B587C0.5050007@rock-chips.com>
 <CAOw6vbJdBwUdg5Qww-autFH=HvvaM-uac7-mN+Ja7PEDiPoPnw@mail.gmail.com>
 <57BB9B87.2040406@rock-chips.com>
 <CAOw6vbKnHZK4H_MHOE+iQ=a_YNJQen_F4PQ278B4N51OyxFc9Q@mail.gmail.com>
 <57BE5727.8070100@rock-chips.com>
 <CAOw6vbJi+yV11npBZYi2MHTccSL_0HuuxGidLhmwjV--U6q-wQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <CAOw6vbJi+yV11npBZYi2MHTccSL_0HuuxGidLhmwjV--U6q-wQ@mail.gmail.com>
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

T24gVGh1LCBBdWcgMjUsIDIwMTYgYXQgMToxNSBQTSwgU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJv
bWl1bS5vcmc+IHdyb3RlOgo+Cj4KPiBPbiBXZWQsIEF1ZyAyNCwgMjAxNiBhdCAxMDoyNSBQTSwg
TWFyayB5YW8gPG1hcmsueWFvQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPj4KPj4gT24gMjAxNuW5
tDA45pyIMjPml6UgMjE6MTMsIFNlYW4gUGF1bCB3cm90ZToKPj4+Cj4+PiBPbiBNb24sIEF1ZyAy
MiwgMjAxNiBhdCA4OjQwIFBNLCBNYXJrIHlhbyA8bWFyay55YW9Acm9jay1jaGlwcy5jb20+Cj4+
PiB3cm90ZToKPj4+Pgo+Pj4+IE9uIDIwMTblubQwOOaciDIz5pelIDA0OjMwLCBTZWFuIFBhdWwg
d3JvdGU6Cj4+Pj4+Cj4+Pj4+IE9uIFRodSwgQXVnIDE4LCAyMDE2IGF0IDY6MDIgQU0sIE1hcmsg
eWFvIDxtYXJrLnlhb0Byb2NrLWNoaXBzLmNvbT4KPj4+Pj4gd3JvdGU6Cj4+Pj4+Pgo+Pj4+Pj4g
T24gMjAxNuW5tDA45pyIMTjml6UgMTc6MTEsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+Pj4+Pj4K
Pj4+Pj4+PiBPbiBUaHUsIEF1ZyAxOCwgMjAxNiBhdCAwNTowODoxNFBNICswODAwLCBNYXJrIHlh
byB3cm90ZToKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBIaSBTZWFuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4g
VGhhbmtzIGZvciBzZW5kIHYzIHBhdGNoIGZvciByazMzOTkgdm9wIHN1cHBvcnQuCj4+Pj4+Pj4+
Pgo+Pj4+Pj4+Pj4gQnV0IHNvcnJ5IGZvciB0aGF0LCBJIGhhZCBjaGFuZ2VkIG15IG1pbmQsIHRo
b3NlIHBhdGNoZXMgYXJlCj4+Pj4+Pj4+PiBkZXByZWNhdGVkLAo+Pj4+Pj4+Pj4gSSBoYXZlIG5l
dyByazMzOTkgcGF0Y2ggb24gbXkgZG93bnN0cmVhbSBrZXJuZWwsIEkgd2lsbCB1cHN0cmVhbQo+
Pj4+Pj4+Pj4gc29vbi4KPj4+Pj4+Pgo+Pj4+Pj4+IFd1dD8gSW1vIG1lcmdlIFNlYW4ncyBwYXRj
aCBoZXJlLCBhbmQgdGhlbiByZWJhc2UgeW91ciBkb3duc3RyZWFtCj4+Pj4+Pj4gcGF0Y2hlcwo+
Pj4+Pj4+IG9uIHRvcCBvZiBpdC4gVGhhdCB5b3UgaGF2ZSBhIGRvd25zdHJlYW0gdHJlZSB3aGlj
aCBpcyBvdXQgb2Ygc3luYwo+Pj4+Pj4+IHdpdGgKPj4+Pj4+PiB1cHN0cmVhbSBzaG91bGRuJ3Qg
YmUgYSByZWFzb24gdG8gc3RhbGwgdXBzdHJlYW0gZGV2ZWxvcG1lbnQuCj4+Pj4+Pj4gLURhbmll
bAo+Pj4+Pj4+Cj4+Pj4+PiBZZWFoLCBTb3JyeSBmb3IgdGhhdC4KPj4+Pj4+Cj4+Pj4+PiBJbiBm
YWN0LCBvbiBteSBkb3duc3RyZWFtIGtlcm5lbCwgYWxzbyBoYXZlIHRob3NlIHBhdGNoZXMsIG15
IG5ldwo+Pj4+Pj4gcmszMzk5Cj4+Pj4+PiBwYXRjaGVzIGFyZSBiYXNlZCBvbiB0aGVtLAo+Pj4+
Pj4gYnV0IHRoZSBuZXcgcmszMzk5IHBhdGNoZXMgd2lsbCBjb3ZlciB0aGUgdGhvc2UgcGF0Y2hl
cywgIFNlYW4ncwo+Pj4+Pj4gcGF0Y2hlcwo+Pj4+Pj4gaXMKPj4+Pj4+IG9sZCB2ZXJzaW9uLgo+
Pj4+Pj4KPj4+Pj4+IEkganVzdCB3YW50IHRvIGZhc3QgZm9yd2FyZCwgZG9uJ3Qgd2FudCB0byBz
ZW5kIHR3byB2ZXJzaW9uIGRyaXZlcnMgdG8KPj4+Pj4+IHVwc3RyZWFtLgo+Pj4+Pj4gYnV0IGlm
IHlvdSBhbmQgRGF2ZSBmZWVsIG9rIGZvciB0aGF0LCBJIGhhdmUgbm8gcHJvYmxlbTotKSAuCj4+
Pj4+Pgo+Pj4+Pj4gbWVyZ2VkIFNlYW4ncyBwYXRjaGVzIGFuZCB0aGVuIGFwcGx5IG5ldyB2ZXJz
aW9uIHBhdGNoZXMuCj4+Pj4+Pgo+Pj4+PiBPaywgc28gY2FuIEkgZ2V0IGEgcmV2aWV3L2FjayBm
b3IgdGhlc2UgcmV2aXNlZCBwYXRjaGVzIHRoZW4/Cj4+Pj4+IFNvbWV0aGluZyBpcyBiZXR0ZXIg
dGhhbiBub3RoaW5nLCBhbmQgdGhlcmUncyBhIGJ1bmNoIG9mIHN0dWZmIHRoYXQKPj4+Pj4gZGVw
ZW5kcyBvbiB0aGVzZSBjaGFuZ2VzLgo+Pj4+Pgo+Pj4+PiBTZWFuCj4+Pj4KPj4+PiBZZXMsIEJ1
dCBJIG1pc3MgeW91ciBbUEFUQ0ggdjMgMC81XSBhbmQgW1BBVENIIHYzIDQvNV0uIGRvIHlvdSBt
ZWFuIHRoZQo+Pj4+IGxvc3QKPj4+PiBwYXRjaGVzIHVzZSB2MiB2ZXJzaW9uPwo+Pj4+Cj4+PiBZ
ZXMsIHYyIDQvNSB3YXMgcmV2aWV3ZWQgYXMtaXMsIHNvIEkganVzdCBhcHBsaWVkIGl0Lgo+Pj4K
Pj4+IFNlYW4KPj4KPj4gQXBwbGllZCB0aGlzIHNlcmllcyB0byBteSBkcm0tbmV4dC4KPj4KPgo+
IFlvdSBzaG91bGQgcHJvYmFibHkganVzdCByZWJhc2UgeW91ciBkb3duc3RyZWFtIGtlcm5lbCBv
biB0b3Agb2YgbXkgYnJhbmNoCj4gaGVyZTogaHR0cHM6Ly9jZ2l0LmZyZWVkZXNrdG9wLm9yZy9+
c2VhbnBhdWwvZG9nd29vZC9sb2cvP2g9Zm9yLW5leHQKPgoKUmVzZW5kaW5nIGluIHBsYWluIHRl
eHQuCgpTZWFuCgo+IFNlYW4KPgo+Cj4+IFRoYW5rcy4KPj4KPj4KPj4+Pj4KPj4+Pj4+IFRoYW5r
cy4KPj4+Pj4+Cj4+Pj4+PiAtLQo+Pj4+Pj4g77ytYXJrIFlhbwo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+
Cj4+Pj4KPj4+PiAtLQo+Pj4+IO+8rWFyayBZYW8KPj4+Pgo+Pj4+Cj4+Pgo+Pj4KPj4KPj4KPj4g
LS0KPj4g77ytYXJrIFlhbwo+Pgo+Pgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaS1kZXZlbAo=
