From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH v3 0/6] drm/rockchip: fixes and new features
Date: Tue, 21 Jul 2015 16:20:01 +0800
Message-ID: <1437466807-13689-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: dri-devel@lists.freedesktop.org
Cc: zwl@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, xw@rock-chips.com, dkm@rock-chips.com, sandy.huang@rock-chips.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

VGhpcyBzZXJpZXMgcGF0Y2hlcyBhcmUgdXNlZCBmb3IgeXV2IGltYWdlIG92ZXJsYXkgZGlzcGxh
eS4KClJvY2tjaGlwIHZvcCBzdXBwb3J0IE5WMTEsIE5WMTYsIE5WMjQgeXV2IGZvcm1hdCwKYW5k
IGNhbiBzY2FsZSB0aGUgaW1hZ2Ugc2NhbGUgMS84IHRvIDguCgpDaGFuZ2VzIGluIHYzOgotIG1h
a2UgY29kZSBtb3JlIHJlYWRhYmxlCi0gZml4IHNvbWUgYnVncwoKQ2hhbmdlcyBpbiB2MjoKLSBV
diBidWZmZXIgbm90IHN1cHBvcnQgb2RkIG9mZnNldCwgYWxpZ24gaXQuCi0gRml4IGVycm9yIGRp
c3BsYXkgd2hlbiBtb3ZlIHl1diBpbWFnZS4gCi0gRml4IHNjYWxlIGRlc3QgaW5mby4gCk1hcmsg
WWFvICg2KToKICBkcm0vcm9ja2NoaXA6IHZvcDogRml4IHZpcnR1YWwgc3RyaWRlIGNhbGN1bGF0
aW9uCiAgZHJtL3JvY2tjaGlwOiB2b3A6IEZpeCB3aW5kb3cgZGVzdCBzdGFydCBwb2ludAogIGRy
bS9yb2NrY2hpcDogdm9wOiBBZGQgeXV2IHBsYW5lIHN1cHBvcnQKICBkcm0vcm9ja2NoaXA6IHZv
cDogRGVmYXVsdCBlbmFibGUgd2luMi8zIGFyZWEwIGJpdAogIGRybS9yb2NrY2hpcDogdm9wOiBy
ZXN0b3JlIHZvcCByZWdpc3RlcnMgd2hlbiByZXN1bWUKICBkcm0vcm9ja2NoaXA6IHZvcDogc3Vw
cG9ydCBwbGFuZSBzY2FsZQoKCi0tIAoxLjcuOS41CgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcmktZGV2ZWwK
