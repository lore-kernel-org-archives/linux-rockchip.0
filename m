From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH 2/2] dt-bindings: add document for rk3399-vop
Date: Mon, 18 Apr 2016 11:17:58 +0800
Message-ID: <1460949478-2236-2-git-send-email-mark.yao@rock-chips.com>
References: <1460949478-2236-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1460949478-2236-1-git-send-email-mark.yao@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Mark Rutland <mark.rutland@arm.com>, Pawel Moll <pawel.moll@arm.com>, Ian Campbell <ijc+devicetree@hellion.org.uk>, Rob Herring <robh+dt@kernel.org>, Kumar Gala <galak@codeaurora.org>
List-Id: linux-rockchip.vger.kernel.org

Q2M6IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+CkNjOiBQYXdlbCBNb2xsIDxwYXdl
bC5tb2xsQGFybS5jb20+CkNjOiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPgpD
YzogSWFuIENhbXBiZWxsIDxpamMrZGV2aWNldHJlZUBoZWxsaW9uLm9yZy51az4KQ2M6IEt1bWFy
IEdhbGEgPGdhbGFrQGNvZGVhdXJvcmEub3JnPgoKU2lnbmVkLW9mZi1ieTogTWFyayBZYW8gPG1h
cmsueWFvQHJvY2stY2hpcHMuY29tPgotLS0KIC4uLi9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlw
L3JvY2tjaGlwLXZvcC50eHQgICAgIHwgICAgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9k
aXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLXZvcC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcC12b3AudHh0CmluZGV4IDU0ODli
NTkuLmZkMjVlYTkgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLXZvcC50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAtdm9wLnR4dApAQCAt
OCw2ICs4LDggQEAgUmVxdWlyZWQgcHJvcGVydGllczoKIC0gY29tcGF0aWJsZTogdmFsdWUgc2hv
dWxkIGJlIG9uZSBvZiB0aGUgZm9sbG93aW5nCiAJCSJyb2NrY2hpcCxyazMyODgtdm9wIjsKIAkJ
InJvY2tjaGlwLHJrMzAzNi12b3AiOworCQkicm9ja2NoaXAscmszMzk5LXZvcC1iaWciOworCQki
cm9ja2NoaXAscmszMzk5LXZvcC1saXQiOwogCiAtIGludGVycnVwdHM6IHNob3VsZCBjb250YWlu
IGEgbGlzdCBvZiBhbGwgVk9QIElQIGJsb2NrIGludGVycnVwdHMgaW4gdGhlCiAJCSBvcmRlcjog
VlNZTkMsIExDRF9TWVNURU0uIFRoZSBpbnRlcnJ1cHQgc3BlY2lmaWVyCi0tIAoxLjcuOS41CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
