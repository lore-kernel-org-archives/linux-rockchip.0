From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: fix for mailbox read validation.
Date: Mon, 28 Jan 2019 11:17:17 +0100
Message-ID: <4752187.AQatX9g1G3@phil>
References: <1542640463-18332-1-git-send-email-dkos@cadence.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1542640463-18332-1-git-send-email-dkos@cadence.com>
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

QW0gTW9udGFnLCAxOS4gTm92ZW1iZXIgMjAxOCwgMTY6MTQ6MTQgQ0VUIHNjaHJpZWIgRGFtaWFu
IEtvczoKPiBUaGlzIGlzIGJhc2ljYWxseSB0aGUgc2FtZSBmaXggYXMgaW4KPiBjb21taXQgZmE2
OGQ0Zjg0NzZiICgiZHJtL3JvY2tjaGlwOiBmaXggZm9yIG1haWxib3ggcmVhZCBzaXplIikKPiBi
dXQgZm9yIGNkbl9kcF9tYWlsYm94X3ZhbGlkYXRlX3JlY2VpdmUgZnVuY3Rpb24uCj4gCj4gU2Vl
IHBhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEwNjcxOTgxLyBmb3IgZGV0YWlscy4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBEYW1pYW4gS29zIDxka29zQGNhZGVuY2UuY29tPgoKZm9yZ290IHRoYXQg
cGF0Y2ggaW4gbXkgaW5ib3ggc29tZWhvdyAuLi4gYXBwbGllZCB0byBkcm0tbWlzYy1uZXh0IG5v
dwoKVGhhbmtzCkhlaWtvCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
LWRldmVsCg==
