From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH v6 05/10] drm/rockchip: analogix_dp: Add a sanity check
 for rockchip_drm_psr_register()
Date: Fri, 20 Oct 2017 09:49:23 +0800
Message-ID: <1c7f4eaf-6fa2-58e1-a216-46ac039fffd5@rock-chips.com>
References: <20171019034812.13768-1-jeffy.chen@rock-chips.com>
 <20171019034812.13768-6-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20171019034812.13768-6-jeffy.chen@rock-chips.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Jeffy Chen <jeffy.chen@rock-chips.com>, linux-kernel@vger.kernel.org
Cc: briannorris@chromium.org, dianders@chromium.org, dri-devel@lists.freedesktop.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxN+W5tDEw5pyIMTnml6UgMTE6NDgsIEplZmZ5IENoZW4gd3JvdGU6Cj4gVGhlIHJvY2tj
aGlwX2RybV9wc3JfcmVnaXN0ZXIoKSBjYW4gZmFpbCwgc28gYWRkIGEgc2FuaXR5IGNoZWNrIGZv
ciB0aGF0Lgo+Cj4gQWxzbyByZW9yZGVyIHRoZSBjYWxscyBpbiB1bmJpbmQoKSB0byBtYXRjaCBi
aW5kKCkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKZWZmeSBDaGVuPGplZmZ5LmNoZW5Acm9jay1jaGlw
cy5jb20+CgpMb29rcyBnb29kIGZvciBtZQpBY2tlZC1ieTogTWFyayBZYW8gPG1hcmsueWFvQHJv
Y2stY2hpcHMuY29tPgoKTWFyawoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaS1kZXZlbAo=
