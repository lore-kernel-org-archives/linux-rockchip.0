From: Emil Velikov <emil.l.velikov@gmail.com>
Subject: Re: [PATCH v4 1/3] drm/bridge/synopsys: dsi: stop clobbering drvdata
Date: Fri, 1 Dec 2017 18:29:51 +0000
Message-ID: <CACvgo53vmzCPtzPgrb_bvipwDVugtFQjpjHXMRnq0q4-uUre3Q@mail.gmail.com>
References: <1512100685-4015-1-git-send-email-nickey.yang@rock-chips.com>
 <1512100685-4015-2-git-send-email-nickey.yang@rock-chips.com>
 <5605c3c2-56ad-2289-c3c0-78cde1152123@st.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <5605c3c2-56ad-2289-c3c0-78cde1152123@st.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Philippe CORNU <philippe.cornu@st.com>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, "airlied@linux.ie" <airlied@linux.ie>, "briannorris@chromium.org" <briannorris@chromium.org>, "hoegsberg@gmail.com" <hoegsberg@gmail.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Yannick FERTRE <yannick.fertre@st.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Nickey Yang <nickey.yang@rock-chips.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "laurent.pinchart@ideasonboard.com" <laurent.pinchart@ideasonboard.com>, "zyw@rock-chips.com" <zyw@rock-chips.com>, "xbl@rock-chips.com" <xbl@rock-chips.com>, "mka@chromium.org" <mka@chromium.org>, "hl@rock-chips.com" <hl@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

T24gMSBEZWNlbWJlciAyMDE3IGF0IDA4OjMyLCBQaGlsaXBwZSBDT1JOVSA8cGhpbGlwcGUuY29y
bnVAc3QuY29tPiB3cm90ZToKPiBEZWFyIE5pY2tleSwKPgo+IE1hbnkgdGhhbmtzIGZvciB5b3Vy
IHBhdGNoLgo+Cj4gSSBhbSBzb3JyeSB0byBzYXkgdGhhdCBidXQgeW91IGNhbiBub3QgYWRkIG15
ICJBY2tlZC1ieSIgdG8gdGhpcyBwYXRjaAo+IGJlY2F1c2UgdGhpcyBjb2RlIGlzIGRpZmZlcmVu
dCBmcm9tIHRoZSAib3JpZ2luYWwiIG9uZSBmcm9tIEJyaWFuICh3aGljaAo+IGdvdCBteSAiQWNr
ZWQtYnkiKS4KPgpTbWFsbCBpZGVhOgoKSSd2ZSBzZWVuIHBlb3BsZSBtZW50aW9uIHRoZSByZXZp
c2lvbiB0aGF0IGdvdCB0aGUgci1iL2Fjay4gQWx0aG91Z2gKaW4gc3VjaCBjYXNlcyB0aGUgY2hh
bmdlbG9nIHRlbmRzIHRvIGJlIHBhcnQgb2YgdGhlIGNvbW1pdCBtZXNzYWdlLgpGb3IgZXhhbXBs
ZToKCmRybTogYWRkcmVzcyAuLi4KCkRldGVybWluZSBYIGJhc2VkIG9uIEEuCgp2MjoKIC0gU29t
ZSBjaGFuZ2Vsb2cKCkFja2VkLWJ5OiBTb21lIFBlcnNvbiA8ZmFuY3lAZW1haWwuY29tPiAodjEp
CgotRU1pbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
cmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
