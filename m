From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 03/41] drm/rockchip: support prime import sg table
Date: Tue, 12 Dec 2017 13:32:21 +0100
Message-ID: <2774468.M7lXU1VOoT@phil>
References: <20170310043305.17216-1-seanpaul@chromium.org>
 <20170310043305.17216-4-seanpaul@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170310043305.17216-4-seanpaul@chromium.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: linux-rockchip@lists.infradead.org
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, Mark Yao <mark.yao@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Haixia Shi <hshi@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

QW0gRG9ubmVyc3RhZywgOS4gTcOkcnogMjAxNywgMjM6MzI6MTggQ0VUIHNjaHJpZWIgU2VhbiBQ
YXVsOgo+IEZyb206IEhhaXhpYSBTaGkgPGhzaGlAY2hyb21pdW0ub3JnPgo+IAo+IFRoZSBwcmlt
ZSBmZCB0byBoYW5kbGUgaW9jdGwgd2FzIG5vdCB1c2VkIHdpdGggcm9ja2NoaXAgYmVmb3JlLiBT
dXBwb3J0Cj4gd2FzIGFkZGVkIGluIG9yZGVyIHRvIHBhc3MgZ3JhcGhpY3NfR2JtIGFuZCB0byBz
dXBwb3J0IHBvdGVudGlhbCB1c2VzCj4gd2l0aGluIENocm9tZSBPUyAoZS5nLiB6ZXJvLWNvcHkg
dmlkZW8gZGVjb2RlLCBjYW1lcmEpLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEhhaXhpYSBTaGkgPGhz
aGlAY2hyb21pdW0ub3JnPgoKbWlzc2luZyBhIGZ1cnRoZXIgU2lnbmVkLW9mZiBmcm9tIFNlYW4g
UGF1bCBhcyB0aGUgc2VuZGVyLgoKSSd2ZSB0ZXN0ZWQgdGhpcyBvbiB0aGUgcmszMzI4IHRvZ2V0
aGVyIHdpdGggdGhlIHdpcCBMaW1hIGRyaXZlciBhbmQgbXkgd2lwCk1lc2EgUm9ja2NoaXAgUGlw
ZSBhbmQgdGhlIGttc2N1YmUgaW1wcm92ZWQgZnJvbSBhIGZhaWx1cmUgYWJvdXQgaW1wb3J0aW5n
CnRoZSBidWZmZXIgdG8gcHJvZHVjaW5nIGFjdHVhbCBvdXRwdXQsIHNvCgpUZXN0ZWQtYnk6IEhl
aWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcmktZGV2ZWwK
