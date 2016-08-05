From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v4 1/7] clk: rockchip: add clock flag parameter when
 register pll
Date: Fri, 05 Aug 2016 10:55:44 +0200
Message-ID: <1618511.YfjKKMY3nc@diego>
References: <1469779021-10426-1-git-send-email-hl@rock-chips.com>
 <4870605.nd4Eof6Gm1@phil> <57A45369.7020804@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <57A45369.7020804@gmail.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: hl <huanglin821201@gmail.com>
Cc: tixy@linaro.org, typ@rock-chips.com, Lin Huang <hl@rock-chips.com>, linux-rockchip@lists.infradead.org, mturquette@baylibre.com, dbasehore@chromium.org, sboyd@codeaurora.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, dianders@chromium.org, cw00.choi@samsung.com, kyungmin.park@samsung.com, myungjoo.ham@samsung.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

SGkgTGluLAoKQW0gRnJlaXRhZywgNS4gQXVndXN0IDIwMTYsIDE2OjUwOjQ5IHNjaHJpZWIgaGw6
Cj4gT24gMjAxNuW5tDA45pyIMDXml6UgMDY6MzcsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+ID4g
QW0gRnJlaXRhZywgMjkuIEp1bGkgMjAxNiwgMTU6NTY6NTUgc2NocmllYiBMaW4gSHVhbmc6Cj4g
Pj4gRnJvbTogSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiA+PiAKPiA+PiBhZGQg
Y2xvY2sgZmxhZyBwYXJhbWV0ZXIgc28gd2UgY2FuIHBhc3Mgc3BlY2lmaWMgY2xvY2sgZmxhZwo+
ID4+IChsaWtlIENMS19HRVRfUkFURV9OT0NBQ0hFIGV0Yy4uKXRvIHBsbCBkcml2ZXIuCj4gPj4g
Cj4gPj4gU2lnbmVkLW9mZi1ieTogSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiA+
PiBTaWduZWQtb2ZmLWJ5OiBMaW4gSHVhbmcgPGhsQHJvY2stY2hpcHMuY29tPgo+ID4gCj4gPiBh
cHBsaWVkIHRvIG15IGNsb2NrIGJyYW5jaCBmb3IgNC45IGFmdGVyIHNvbWUgbWlub3IgZWRpdHMg
b24gdGhlIGNvbW1pdAo+ID4gbWVzc2FnZS4KPiAKPiAgIEkgY2FuIG5vdCBmb3VuZCB5b3VyIGNs
b2NrIGJyYW5jaCBmb3IgNC45LCBjYW4geW91IHNoYXJlIG1lIHRoZSBwYXRjaAo+IElELCBpIHdh
bnQKPiBjaGVycnktcGljayBpdCB0byBteSBkb3duc3RyZWFtIGJyYW5jaC4KCnNvcnJ5IGZvcmdv
dCB0byBwdXNoIHllc3RlcmRheSBldmVuaW5nLiBUaGUgcGF0Y2ggaXMgYXQgWzBdLgoKUGxlYXNl
IGtlZXAgaW4gbWluZCwgdGhhdCBJJ2xsIHJlYmFzZSB0aGF0IGJyYW5jaCBvbnRvIDQuOC1yYzEg
b25jZSBpdCAKZ2V0cyByZWxlYXNlZCBvbiBzdW5kYXkuIFNvIHRoZSBjb21taXQgaWQgaXMgdm9s
YXRpbGUgdGlsbCB0aGVuLgpbU2FtZSBpcyB0cnVlIGZvciBhbGwgbXkgNC45IGJyYW5jaCBvZiBj
b3Vyc2UsIEkganVzdCBwaWNrIHBhdGNoZXMgYWxyZWFkeQp0byByZWR1Y2UgdGhlIG51bWJlciBv
ZiBwYXRjaGVzIGluIG15IGluYm94IDotKSBdCgoKSGVpa28KClswXSBodHRwczovL2dpdC5rZXJu
ZWwub3JnL2NnaXQvbGludXgva2VybmVsL2dpdC9tbWluZC9saW51eC1yb2NrY2hpcC5naXQvY29t
bWl0Lz9oPXY0LjktY2xrL25leHQmaWQ9MjRiZGQxYTVhMmNjNzA2YjhjNDgyMGExOTc2ZGQ0ZWVk
NTY3MTZlNAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
