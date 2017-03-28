From: Felipe Balbi <felipe.balbi-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Subject: Re: [PATCH v2 2/2] usb: dwc2: add multiple clocks handling
Date: Tue, 28 Mar 2017 16:49:34 +0300
Message-ID: <87mvc5fr4h.fsf@linux.intel.com>
References: <1486608279-22278-1-git-send-email-frank.wang@rock-chips.com>
 <1486608279-22278-3-git-send-email-frank.wang@rock-chips.com>
 <1905699.rAdUkra9dJ@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1905699.rAdUkra9dJ@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, daniel.meng-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

CkhpLAoKSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JpdGVzOgo+IEFtIERvbm5l
cnN0YWcsIDkuIEZlYnJ1YXIgMjAxNywgMTA6NDQ6MzkgQ0VUIHNjaHJpZWIgRnJhbmsgV2FuZzoK
Pj4gU2luY2UgZHdjMiBtYXkgaGF2ZSBvbmUgb3IgbW9yZSBpbnB1dCBjbG9ja3MgbmVlZCB0byBt
YW5hZ2UgZm9yIHNvbWUKPj4gcGxhdGZvcm0sIHNvIHRoaXMgYWRkcyBjaGFuZ2UgY2xrIHRvIGNs
aydzIGFycmF5IG9mIHN0cnVjdCBkd2MyX2hzb3RnCj4+IHRvIGhhbmRsZSBtb3JlIGNsb2NrcyBv
cGVyYXRpb24uCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBGcmFuayBXYW5nIDxmcmFuay53YW5nQHJv
Y2stY2hpcHMuY29tPgo+Cj4gZm9yIHRoZSBzaW1wbGUgY2xvY2sgaGFuZGxpbmcgdGhlIGR3YzIt
ZHJpdmVyIGRvZXMgcmlnaHQgbm93LCB0aGlzIGxvb2tzIAo+IGFkcXVhdGUgYW5kIGhvbm9yaW5n
IEVQUk9CRV9ERUZFUiBpcyBhIG5pY2UgdG91Y2ggOy0pLCBzbwo+Cj4gUmV2aWV3ZWQtYnk6IEhl
aWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpKb2huLCBjYXJlIHRvIGxvb2sgYXQgdGhp
cyBzZXJpZXM/CgotLSAKYmFsYmkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
