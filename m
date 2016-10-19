From: Randy Li <randy.li@rock-chips.com>
Subject: the dp helper would try to enable the i2c channel for rockchip-edp
Date: Wed, 19 Oct 2016 21:52:26 +0800
Message-ID: <24daffe0-42a4-2a37-d685-7d9ecf9c3b11@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: dri-devel@lists.freedesktop.org
Cc: tomeu.vizoso@collabora.com, daniel.vetter@ffwll.ch, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, gustavo.padovan@collabora.co.uk
List-Id: linux-rockchip.vger.kernel.org

SGVsbG8sCgogICBSZWNlbnRseSwgSSB3YW50IHRvIHVzZSBhIGVEUCBwYW5lbCBpbiBteSBSSzMy
ODggcGxhdGZvcm0sIGJ1dCBJIGdvdCAKdGhlIGZvbGxvd2luZyBtZXNzYWdlOgoKWyAgICA4Ljkz
NTkxOF0gaTJjIGkyYy02OiBvZl9pMmM6IG1vZGFsaWFzIGZhaWx1cmUgb24gL2RwQGZmOTcwMDAw
L3BvcnRzClsgICAgOC45MzYwMThdIHJvY2tjaGlwLWRybSBkaXNwbGF5LXN1YnN5c3RlbTogYm91
bmQgZmY5NzAwMDAuZHAgKG9wcyAKcm9ja2NoaXBfZHBfY29tcG9uZW50X29wcyBbYW5hbG9naXhf
ZHBfcm9ja2NoaXBdKQpJdCB0cnkgdG8gZW5hYmxlIHRoZSBlRFAgYXV4IGNoYW5uZWwgYW5kIGFk
ZCBhIG5ldyBJMkMgY29udHJvbGxlciwgYnV0IAppdCBmYWlsZWQgdGhlbiB0aGUgd2hvbGUgZGlz
cGxheSBzdWJzeXN0ZW0gaXMgYnJva2VuLCB0aGUgcGFuZWwgZG9lc24ndCAKcG93ZXIgb24gZWl0
aGVyLgoKICAgSSBob3BlIHNvbWVib2R5IGNvdWxkIGZpZ3VyZSBvdXQgd2hhdCBpcyB3cm9uZyB3
aXRoIGl0LgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
