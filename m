From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v3 5/5] arm64: dts: rockchip: update mipi node for RK3399
Date: Wed, 29 Nov 2017 10:37:33 -0800
Message-ID: <20171129183732.GA74243@google.com>
References: <1511868006-27130-1-git-send-email-nickey.yang@rock-chips.com>
 <1511868006-27130-6-git-send-email-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <1511868006-27130-6-git-send-email-nickey.yang@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Nickey Yang <nickey.yang@rock-chips.com>
Cc: mark.rutland@arm.com, Doug Anderson <dianders@chromium.org>, airlied@linux.ie, hoegsberg@gmail.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, philippe.cornu@st.com, yannick.fertre@st.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, zyw@rock-chips.com, xbl@rock-chips.com, mka@chromium.org, hl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

KyBEb3VnLCBzaW5jZSBoZSB3YXMgYXNraW5nIHRoZXNlIHRoaW5ncyBlbHNld2hlcmUKCk9uIFR1
ZSwgTm92IDI4LCAyMDE3IGF0IDA3OjIwOjA2UE0gKzA4MDAsIE5pY2tleSBZYW5nIHdyb3RlOgo+
IFRoaXMgcGF0Y2ggdXBkYXRlIG1pcGkgbm9kZSBmb3IgUkszMzk5IERTSSBjb250cm9sbGVyCj4g
YmFzZWQgb24gdGhlIFN5bm9wc3lzIERlc2lnbldhcmUgTUlQSSBEU0kgaG9zdCBjb250cm9sbGVy
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IE5pY2tleSBZYW5nIDxuaWNrZXkueWFuZ0Byb2NrLWNoaXBz
LmNvbT4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaSB8
IDggKysrKystLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTkuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKPiBpbmRl
eCBkMzQwYjU4YS4uMGFjNjdhOSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTkuZHRzaQo+IEBAIC0xNjUyLDkgKzE2NTIsMTEgQEAKPiAgCQlzdGF0dXMgPSAiZGlzYWJs
ZWQiOwo+ICAKPiAgCQlwb3J0cyB7Cj4gLQkJCW1pcGlfaW46IHBvcnQgewo+IC0JCQkJI2FkZHJl
c3MtY2VsbHMgPSA8MT47Cj4gLQkJCQkjc2l6ZS1jZWxscyA9IDwwPjsKPiArCQkJI2FkZHJlc3Mt
Y2VsbHMgPSA8MT47Cj4gKwkJCSNzaXplLWNlbGxzID0gPDA+OwoKXl4gSXQncyBnb29kIHRvIGFk
ZCB0aGVzZSBoZXJlLCBzaW5jZSBjaGlsZCBub2RlcyBhcmUgZ29pbmcgdG8gaGF2ZSB1bml0CmFk
ZHJlc3Nlcy4KCj4gKwo+ICsJCQltaXBpX2luOiBwb3J0QDAgewo+ICsJCQkJcmVnID0gPDA+OwoK
Xl4gQnV0IHlvdSdyZSByZW1vdmluZyB0aGUgI3thZGRyZXNzLHNpemV9LWNlbGxzIGZyb20gdGhl
IHBvcnQsIHdoaWxlCnN0aWxsIHVzaW5nIHVuaXQgYWRkcmVzc2VzIG9uIGl0cyBzdWJub2RlcyAo
dGhlIGVuZHBvaW50QC4uLiBub2RlcykuIFlvdQpzaG91bGQga2VlcCAqYm90aCosIHNpbmNlIGJv
dGggdGhlICdwb3J0cycgbm9kZSBhbmQgdGhlICdwb3J0QDAnIG5vZGUKd2lsbCBoYXZlIGNoaWxk
cmVuIHdpdGggYWRkcmVzc2VzLgoKQnJpYW4KCj4gIAo+ICAJCQkJbWlwaV9pbl92b3BiOiBlbmRw
b2ludEAwIHsKPiAgCQkJCQlyZWcgPSA8MD47Cj4gLS0gCj4gMS45LjEKPiAKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlz
dApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
