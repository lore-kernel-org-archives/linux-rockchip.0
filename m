From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v6 2/7] drm/rockchip: vop: move write_relaxed flags to vop
 register
Date: Thu, 27 Jul 2017 00:46:59 +0200
Message-ID: <2941261.MXxzaYlBrM@phil>
References: <1501049930-5794-1-git-send-email-mark.yao@rock-chips.com>
 <1501049953-5946-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1501049953-5946-1-git-send-email-mark.yao@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

QW0gTWl0dHdvY2gsIDI2LiBKdWxpIDIwMTcsIDE0OjE5OjEyIENFU1Qgc2NocmllYiBNYXJrIFlh
bzoKPiBTaW5jZSB0aGUgZHJtIGF0b21pYyBmcmFtZXdvcmssIG9ubHkgYSBzbWFsbCBwYXJ0IG9m
IHRoZSB2b3AKPiByZWdpc3RlciBuZWVkcyBzeW5jIHdyaXRlLCBDdXJyZW50bHkgc2VlbXMgb25s
eSBmb2xsb3dpbmcgcmVnaXN0ZXJzCj4gbmVlZCBzeW5jIHdyaXRlOgo+ICAgIGNmZ19kb25lLCBz
dGFuZGJ5IGFuZCBpbnRlcnJ1cHQgcmVsYXRlZCByZWdpc3Rlci4KPiAKPiBBbGwgY3RybCByZWdp
c3RlcnMgYXJlIHVzaW5nIHRoZSBzeW5jIHdyaXRlIG1ldGhvZCB0aGF0IGlzCj4gaW5lZmZpY2ll
bnQsIGhhcmRjb2RlIHRoZSB3cml0ZV9yZWxheGVkIGZsYWdzIHRvIHZvcCByZWdpc3RlcnMsCj4g
dGhlbiBjYW4gb25seSBkbyBzeW5jaHJvbml6ZSB3cml0ZSBmb3IgdGhvc2UgYWN0dWFsIG5lZWRl
ZCByZWdpc3Rlci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXJrIFlhbyA8bWFyay55YW9Acm9jay1j
aGlwcy5jb20+CgpvbiByazMwMzYgYW5kIHJrMzI4OApUZXN0ZWQtYnk6IEhlaWtvIFN0dWVibmVy
IDxoZWlrb0BzbnRlY2guZGU+CgoKSGVpa28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpLWRldmVsCg==
