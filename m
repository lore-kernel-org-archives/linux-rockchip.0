From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH v2 5/5] dt-bindings: add documentation for Rockchip rk3399
 display controllers
Date: Wed, 20 Apr 2016 14:20:49 +0800
Message-ID: <1461133249-1944-1-git-send-email-mark.yao@rock-chips.com>
References: <1461133097-1478-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1461133097-1478-1-git-send-email-mark.yao@rock-chips.com>
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
L3JvY2tjaGlwLXZvcC50eHQgICAgIHwgICAgNSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLXZvcC50eHQgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcC12b3AudHh0CmluZGV4IDE5
NjEyMWYuLjZiZjg0NzMgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLXZvcC50eHQKKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAtdm9wLnR4dApA
QCAtOCw2ICs4LDExIEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6CiAtIGNvbXBhdGlibGU6IHZhbHVl
IHNob3VsZCBiZSBvbmUgb2YgdGhlIGZvbGxvd2luZwogCQkicm9ja2NoaXAscmszMDM2LXZvcCI7
CiAJCSJyb2NrY2hpcCxyazMyODgtdm9wIjsKKwkJInJvY2tjaGlwLHJrMzM5OS12b3AtYmlnIjsK
KwkJInJvY2tjaGlwLHJrMzM5OS12b3AtbGl0IjsKK0RvY3VtZW50IGNvbXBhdGlibGUgdmFsdWVz
IGZvciByazMzOTkgZGlzcGxheSBjb250cm9sbGVycy4KK0JpZyBhbmQgbGl0dGxlIGRpc3BsYXkg
Y29udHJvbGxlcnMgYXJlIG5vdCBpZGVudGljYWwgYW5kIGhhdmUgZGlmZmVyaW5nCitmZWF0dXJl
IHNldHMgb24gdGhlIHJrMzM5OS4KIAogLSBpbnRlcnJ1cHRzOiBzaG91bGQgY29udGFpbiBhIGxp
c3Qgb2YgYWxsIFZPUCBJUCBibG9jayBpbnRlcnJ1cHRzIGluIHRoZQogCQkgb3JkZXI6IFZTWU5D
LCBMQ0RfU1lTVEVNLiBUaGUgaW50ZXJydXB0IHNwZWNpZmllcgotLSAKMS43LjkuNQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWls
aW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
