From: Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH v2 21/29] drm/rockchip: switch to drm_*_get(),
 drm_*_put() helpers
Date: Thu, 10 Aug 2017 15:55:46 -0400
Message-ID: <CAOw6vb+Y2QNKkvR_Mp5_UCtGdTN+in52BZoB3PrLxv2BmgpDjw@mail.gmail.com>
References: <1502367012-9417-1-git-send-email-cakturk@gmail.com>
 <1502367012-9417-22-git-send-email-cakturk@gmail.com>
 <20170810181608.xtrtfv5dketh4hcq@art_vandelay>
 <20170810195246.GA951@mbp>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170810195246.GA951@mbp>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Cihangir Akturk <cakturk@gmail.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Linux ARM Kernel <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gVGh1LCBBdWcgMTAsIDIwMTcgYXQgMzo1MiBQTSwgQ2loYW5naXIgQWt0dXJrIDxjYWt0dXJr
QGdtYWlsLmNvbT4gd3JvdGU6Cj4gT24gVGh1LCBBdWcgMTAsIDIwMTcgYXQgMDI6MTY6MDhQTSAt
MDQwMCwgU2VhbiBQYXVsIHdyb3RlOgo+PiBPbiBUaHUsIEF1ZyAxMCwgMjAxNyBhdCAwMzoxMDow
NFBNICswMzAwLCBDaWhhbmdpciBBa3R1cmsgd3JvdGU6Cj4+ID4gVXNlIGRybV8qX2dldCgpIGFu
ZCBkcm1fKl9wdXQoKSBoZWxwZXJzIGluc3RlYWQgb2YgZHJtXypfcmVmZXJlbmNlKCkKPj4gPiBh
bmQgZHJtXypfdW5yZWZlcmVuY2UoKSBoZWxwZXJzLgo+PiA+Cj4+ID4gZHJtXypfcmVmZXJlbmNl
KCkgYW5kIGRybV8qX3VucmVmZXJlbmNlKCkgZnVuY3Rpb25zIGFyZSBqdXN0Cj4+ID4gY29tcGF0
aWJpbGl0eSBhbGlhcyBmb3IgZHJtXypfZ2V0KCkgYW5kIGRybV8qX3B1dCgpIGFuZCBzaG91bGQg
bm90IGJlCj4+ID4gdXNlZCBieSBuZXcgY29kZS4gU28gY29udmVydCBhbGwgdXNlcnMgb2YgY29t
cGF0aWJpbGl0eSBmdW5jdGlvbnMgdG8KPj4gPiB1c2UgdGhlIG5ldyBBUElzLgo+PiA+Cj4+ID4g
R2VuZXJhdGVkIGJ5OiBzY3JpcHRzL2NvY2NpbmVsbGUvYXBpL2RybS1nZXQtcHV0LmNvY2NpCj4+
ID4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBDaWhhbmdpciBBa3R1cmsgPGNha3R1cmtAZ21haWwuY29t
Pgo+Pgo+PiBIaSBDaWhhbmdpciwKPj4gVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guIFVuZm9ydHVu
YXRlbHkgaXQgZG9lcyBub3QgYXBwbHkgdG8gZHJtLW1pc2MtbmV4dC4gQ291bGQKPj4geW91IHBs
ZWFzZSByZXNlbmQgd2l0aCBjb25mbGljdHMgcmVzb2x2ZWQ/Cj4KPiBPSywgSSdsbCBzZW5kIGEg
djMgYmFzZWQgb24gZHJtLW5leHQuCgoqZHJtLW1pc2MtbmV4dAoKPiBBbmQgc2hvdWxkIEkgZHJv
cCBwYXRjaGVzIGZyb20KPiB2MSBhbHJlYWR5IHB1bGxlZCBpbiBkcm0tbmV4dD8KPgoKeWVzIHBs
ZWFzZQoKU2VhbgoKCj4gVGhhbmtzLCBDaWhhbmdpcgo+Cj4+Cj4+IFRoYW5rcywKPj4KPj4gU2Vh
bgo+PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmkt
ZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
