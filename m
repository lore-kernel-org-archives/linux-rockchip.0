From: jeffy <jeffy.chen@rock-chips.com>
Subject: Re: [RFC PATCH v4 4/8] drm/rockchip: dw_hdmi: Fix error handling path
Date: Thu, 19 Oct 2017 09:54:40 +0800
Message-ID: <59E805E0.50006@rock-chips.com>
References: <20171017101624.12506-1-jeffy.chen@rock-chips.com>
 <20171017101624.12506-5-jeffy.chen@rock-chips.com>
 <20171017181034.tsplfsmq7vi4uhmo@art_vandelay>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20171017181034.tsplfsmq7vi4uhmo@art_vandelay>
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
Cc: dmitry.torokhov@gmail.com, briannorris@chromium.org, rjw@rjwysocki.net, dianders@chromium.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, broonie@kernel.org, tfiga@chromium.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

SGkgU2VhbiwKClRoYW5rcyBmb3IgeW91ciByZXZpZXcuCgpPbiAxMC8xOC8yMDE3IDAyOjEwIEFN
LCBTZWFuIFBhdWwgd3JvdGU6Cj4gT24gVHVlLCBPY3QgMTcsIDIwMTcgYXQgMDY6MTY6MjBQTSAr
MDgwMCwgSmVmZnkgQ2hlbiB3cm90ZToKPj4gPkFkZCBtaXNzaW5nIGNsa19kaXNhYmxlX3VucHJl
cGFyZSgpIGluIGJpbmQoKSdzIGVycm9yIGhhbmRsaW5nIHBhdGguCj4gVGhpcyBhbHNvIGlzbid0
IGRpc2FibGVkIGluIHVuYmluZCgpLCBpcyB0aGF0IGludGVudGlvbmFsPwo+Cmkgd2Fzbid0IGFi
bGUgdG8gZG8gdGhhdCBiZWNhdXNlIG9mIGR3X2hkbWkgZHJ2ZGF0YS4KCmkndmUgbW9kaWZpZWQg
aXQgYXMgdG9tYXN6IGRpZCBmb3IgZHAgYnJpZGdlLCBhbmQgZml4ZWQgdGhlIHVuYmluZCgpIGlu
IAp0aGUgbmV4dCB2ZXJzaW9uIDopCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcmktZGV2ZWwK
