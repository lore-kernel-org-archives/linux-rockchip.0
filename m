From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: Re: [PATCH 00/92] ram: rk3399: Add LPDDR4 support
Date: Thu, 13 Jun 2019 11:56:08 +0530
Message-ID: <CAMty3ZCbBZr9RuonkFHgh57=uTysUX+ye9B+PuJKK9uiT-Ztuw@mail.gmail.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
 <349AB0AF-4DEE-4BC8-8FEF-B3DBD34564E4@theobroma-systems.com>
 <CAMty3ZDxop1nKHOxGYC0O7b8HL_ybmBSZr1P8gbDpz7eKyOyDw@mail.gmail.com>
 <b4c1bc19-70b5-d6c4-6764-1c1356b47b38@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <b4c1bc19-70b5-d6c4-6764-1c1356b47b38-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Akash Gajjar <gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

T24gVGh1LCBKdW4gMTMsIDIwMTkgYXQgNzoyMSBBTSBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJv
Y2stY2hpcHMuY29tPiB3cm90ZToKPgo+IEhpIEphZ2FuLAo+Cj4KPiBPbiAwNi8xMS8yMDE5IDEx
OjAzIFBNLCBKYWdhbiBUZWtpIHdyb3RlOgo+Cj4gTm90ZTogUHVtYSByazMzOTkgaGFzIFNQTCBz
aXplIG92ZXJmbG93LCBiZXR0ZXIgdG8gZW5hYmxlIFRQTAo+IGZvciB0aGlzIGJvYXJkLgo+Cj4g
V2UgbmVlZCB0byBrZWVwIFB1bWEgb24gYSBTUEwtb25seSBjb25maWd1cmF0aW9uIGZvciB0aGUg
dGltZSBiZWluZy4KPiBQbGVhc2UgbWFrZSBzdXJlIHRoYXQgdGhlIExQRERSNCBjb2RlIGlzIGFu
IG9wdGlvbmFsIGZlYXR1cmUgdGhhdCBkb2VzIG5vdAo+IGluY3JlYXNlIHRoZSBEUkFNLWRyaXZl
ciBzaXplIGZvciBib2FyZHMgdGhhdCBkb27igJl0IG5lZWQvd2FudCBpdC4KPgo+IFdlIGhhdmUg
ZmV3IGJvYXJkcyBkbyBoYXZlIFRQTC1ydW5uYWJsZSwgd291bGQgYmUgYW55IHRlY2huaWNhbCBp
c3N1ZQo+IHRvIHN3aXRjaCBwdW1hIHRvIFRQTD8gYmVjYXVzZSB3ZSBoYXZlIGxwZGRyNCBjb2Rl
IHBhcnQgb2YgZXhpc3RpbmcKPiBkcml2ZXIgaXRzZWxmIGFuZCBpdCByZXF1aXJlIGV4dHJhIGlm
ZGVmIHRvIGNvbnNpZGVyIHdoaWNoIGluZGVlZCBsb29rCj4gYXdmdWwgZnJvbSBjb2RlIHBvaW50
LW9mLXZpZXcuCj4KPiBEb3NlIHRoZSBkcml2ZXIgc2l6ZSBpbmNyZWFzZSB0b28gbXVjaCBmb3Ig
UHVtYSBiZWNhdXNlIG9mIHRoZSBscGRkcjQKPiBpbml0IGxvZ2ljIG9yIGJlY2F1c2Ugb2YgdGhl
IHR3byBleHRyYSB0aW1pbmcgZGF0YT8gVGhlIHR3byB0aW1pbmcgZGF0YQo+IGFyZSBwcmV0dHkg
YmlnLCBtYXliZSB3ZSBkbyBub3QgbmVlZCB0aGVtIGlmIHRoZSBib2FyZCBpcyBub3QgbHBkZHI0
PwoKWWVzLCBhbG9uZyB3aXRoIHRoZSBjb2RlIHRoYXQgc3VwcG9ydCBzZXQgcmF0ZSBmb3IgbHBk
ZHI0LiBTdGlsbAp0aGlua2luZyBob3cgd2UgY2FuIG1hbmFnZSB0byBtYXJrIHRoZSBscGRkcjQg
Y2hhbmdlcyBpbmRlcGVuZGVudCwKbWFya2luZyBpZmRlZiBpbiBhbGwgdGhlIGNvZGUgbG9vayBh
d2Z1bC4gbGV0IG1lIGtub3cgaWYgeW91IGhhdmUgYW55CmlucHV0cz8KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
