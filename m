From: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 00/12] Add PX30 LVDS support
Date: Fri, 13 Dec 2019 19:10:39 +0100
Message-ID: <20191213181051.25983-1-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, Maxime Chevallier <maxime.chevallier@bootlin.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Miquel Raynal <miquel.raynal@bootlin.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

SGVsbG8sCgpUaGlzIHNlcmllcyBhaW1zIGF0IHN1cHBvcnRpbmcgTFZEUyBvbiBQWDMwLgoKQSBm
aXJzdCBjb3VwbGUgb2YgcGF0Y2hlcyB1cGRhdGUgdGhlIGRvY3VtZW50YXRpb24gd2l0aCB0aGUg
bmV3CmNvbXBhdGlibGUgYW5kIHRoZSBwcmVzZW5jZSBvZiBhIFBIWS4gVGhlbiwgdGhlIGV4aXN0
aW5nIFJvY2tjaGlwCmRyaXZlciBpcyBjbGVhbmVkIGFuZCBleHRlbmRlZCB0byBzdXBwb3J0IFBY
MzAgc3BlY2lmaWNpdGllcy4gRmluYWxseSwKdGhlIFBYMzAgRFRTSSBpcyB1cGRhdGVkIHdpdGgg
Q1JUQyByb3V0ZXMsIHRoZSBEU0kgRFBIWSBhbmQgdGhlIExWRFMKSVAgaXRzZWxmLgoKQ2hlZXJz
LApNaXF1w6hsCgpNaXF1ZWwgUmF5bmFsICgxMik6CiAgZHQtYmluZGluZ3M6IGRpc3BsYXk6IHJv
Y2tjaGlwLWx2ZHM6IERlY2xhcmUgUFgzMCBjb21wYXRpYmxlCiAgZHQtYmluZGluZ3M6IGRpc3Bs
YXk6IHJvY2tjaGlwLWx2ZHM6IERvY3VtZW50IFBYMzAgUEhZCiAgZHJtL3JvY2tjaGlwOiBsdmRz
OiBGaXggaW5kZW50YXRpb24gb2YgYSAjZGVmaW5lCiAgZHJtL3JvY2tjaGlwOiBsdmRzOiBIYXJt
b25pemUgZnVuY3Rpb24gbmFtZXMKICBkcm0vcm9ja2NoaXA6IGx2ZHM6IENoYW5nZSBwbGF0Zm9y
bSBkYXRhCiAgZHJtL3JvY2tjaGlwOiBsdmRzOiBDcmVhdGUgYW4gUkszMjg4IHNwZWNpZmljIHBy
b2JlIGZ1bmN0aW9uCiAgZHJtL3JvY2tjaGlwOiBsdmRzOiBIZWxwZXJzIHNob3VsZCByZXR1cm4g
ZGVjZW50IHZhbHVlcwogIGRybS9yb2NrY2hpcDogbHZkczogUGFjayBmdW5jdGlvbnMgdG9nZXRo
ZXIKICBkcm0vcm9ja2NoaXA6IGx2ZHM6IEFkZCBQWDMwIHN1cHBvcnQKICBhcm02NDogZHRzOiBy
b2NrY2hpcDogQWRkIFBYMzAgQ1JUQ3MgZ3JhcGggTFZEUyBlbmRwb2ludHMKICBhcm02NDogZHRz
OiByb2NrY2hpcDogQWRkIFBYMzAgRFNJIERQSFkKICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRk
IFBYMzAgTFZEUwoKIC4uLi9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLWx2ZHMudHh0ICAgICAg
ICB8ICAgNCArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAuZHRzaSAgICAgICAg
fCAgNTggKysKIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9sdmRzLmMgICAgICB8
IDUxNiArKysrKysrKysrKystLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9sdmRzLmggICAgICB8ICAxOSArLQogNCBmaWxlcyBjaGFuZ2VkLCA0NDEgaW5zZXJ0aW9ucygr
KSwgMTU2IGRlbGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
