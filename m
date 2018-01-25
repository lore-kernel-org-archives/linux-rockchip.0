From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v1 1/2] drm/bridge/synopsys: dsi: Fix dsi_host_transfer()
 return value
Date: Thu, 25 Jan 2018 14:51:00 -0800
Message-ID: <CA+ASDXOXBV0gUrKMb9W2M5EGLUBLjDp4L1qRhnyor04cnS7AsQ@mail.gmail.com>
References: <20180123142618.28384-1-philippe.cornu@st.com>
 <20180123142618.28384-2-philippe.cornu@st.com>
 <CA+ASDXNDpmVdARLCD-A6nfADgmomuscpwekb8M-j=MFJhpeC4Q@mail.gmail.com>
 <4a1b0208-3187-2f08-69fe-ca3b77ee88a8@st.com>
 <CGME20180124183757epcas5p2e8296b5712fc0f2004eb81111693e166@epcas5p2.samsung.com>
 <20180124183748.l5iqoiyqxy4o2pyk@ban.mtv.corp.google.com>
 <61a3e22a-811b-53e5-f735-534dfd9f67da@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <61a3e22a-811b-53e5-f735-534dfd9f67da@samsung.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Andrzej Hajda <a.hajda@samsung.com>
Cc: "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Alexandre TORGUE <alexandre.torgue@st.com>, David Airlie <airlied@linux.ie>, Linux Kernel <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Philippe CORNU <philippe.cornu@st.com>, Yannick FERTRE <yannick.fertre@st.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Thierry Reding <thierry.reding@gmail.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Ludovic BARRE <ludovic.barre@st.com>, Mickael REULIER <mickael.reulier@st.com>, Vincent ABRIOU <vincent.abriou@st.com>, Bhumika Goyal <bhumirks@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

T24gVGh1LCBKYW4gMjUsIDIwMTggYXQgNDoxNiBBTSwgQW5kcnplaiBIYWpkYSA8YS5oYWpkYUBz
YW1zdW5nLmNvbT4gd3JvdGU6Cj4gT24gMjQuMDEuMjAxOCAxOTozNywgQnJpYW4gTm9ycmlzIHdy
b3RlOgo+PiBXaXRoIHlvdXIgY3VycmVudCBwYXRjaCwgeW91J3JlIHJldHVybmluZyB0aGUgJ21p
cGlfZHNpX3BhY2tldDo6c2l6ZScsCj4+IHdoaWNoIGlzIHRoZSBzdW0gb2YgYm90aCBUWCBhbmQg
UlguCj4KPiBJIGRpZCBub3QgZm91bmQgZG9jcyBzYXlpbmcgbWlwaV9kc2lfcGFja2V0OjpzaXpl
IGlzIGEgc3VtIG9mIHR4IGFuZCByeC4KPiB0eCBhbmQgcnggcGFja2V0cyBhcmUgdHdvIGRpZmZl
cmVudCBwYWNrZXRzLCBzbyB0aGV5IGRvIG5vdCBzdW0gdXAuCj4gQnV0IHRoYW5rcyBmb3IgYnJp
bmdpbmcgaXQgdXAsIGl0IHNob3dzIGRvY3MgYXJlIGluY29tcGxldGUvbWlzbGVhZGluZy4KClVn
aCwgSSBtaXNyZWFkIHRoYXQgYWdhaW4uIE5vLCBtaXBpX2RzaV9wYWNrZXQ6OnNpemUgaXMgTk9U
IGNsYWltZWQgdG8KY29udGFpbiBib3RoIFRYIGFuZCBSWC4gSXQganVzdCBzYXlzICJzaXplIG9m
IHRoZSBwYWNrZXQiLCBhbmQgcGFja2V0CmNsZWFybHkgZG9lcyBub3QgaG9sZCB0aGUgUlggZGF0
YSBhbnl3YXkuIEkgZG9uJ3Qga25vdyB3aGF0J3MKaGFwcGVuaW5nIHRvIG15IHJlYWRpbmcgY29t
cHJlaGVuc2lvbi4uLgoKQnV0IHRoZSBtaXNtYXRjaCBvbiB3aGV0aGVyIGRyaXZlcnMgaW1wbGVt
ZW50IHRoZXNlIGNvcnJlY3RseSBhbmQKd2hldGhlciBhbnkgY2FsbGVycyBhY3R1YWxseSBjYXJl
IGFib3V0IHRoZSBkb2N1bWVudGVkIHNlbWFudGljcyBzdGlsbApzdGFuZHMuCgpCcmlhbgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFp
bGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
