From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH v6 10/10] drm/rockchip: dw_hdmi: Fix error handling path
Date: Fri, 20 Oct 2017 09:51:16 +0800
Message-ID: <bd662144-78c8-b448-6dd0-36d68bacca44@rock-chips.com>
References: <20171019034812.13768-1-jeffy.chen@rock-chips.com>
 <20171019034812.13768-11-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20171019034812.13768-11-jeffy.chen@rock-chips.com>
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

T24gMjAxN+W5tDEw5pyIMTnml6UgMTE6NDgsIEplZmZ5IENoZW4gd3JvdGU6Cj4gQWRkIG1pc3Np
bmcgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKCkgaW4gYmluZCgpJ3MgZXJyb3IgaGFuZGxpbmcgcGF0
aCBhbmQKPiB1bmJpbmQoKS4KPgo+IEFsc28gaW5saW5lIGNsa19wcmVwYXJlX2VuYWJsZSgpIHdp
dGggYmluZCgpLgo+Cj4gRml4ZXM6IDEyYjlmMjA0ZTgwNCAoImRybTogYnJpZGdlL2R3X2hkbWk6
IGFkZCByb2NrY2hpcCByazMyODggc3VwcG9ydCIpCj4gU2lnbmVkLW9mZi1ieTogSmVmZnkgQ2hl
bjxqZWZmeS5jaGVuQHJvY2stY2hpcHMuY29tPgoKTG9va3MgZ29vZCBmb3IgbWUKQWNrZWQtYnk6
IE1hcmsgWWFvIDxtYXJrLnlhb0Byb2NrLWNoaXBzLmNvbT4KCk1hcmsKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0
CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
