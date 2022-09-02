Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB691C38145
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Sep 2022 14:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jk4SfUOH2MK7tZMfdu5kTp6Bzt4LtVFMDxYH7SeZbes=; b=VSii7sXCTlKW/f
	dyG5CEsBKy3A/TEafkBkLzZM6tfwnIF2FRAgePWAy1rK0q/cifBG2r+tIpvT7CO+JtEnY6Uf11sPd
	JtTlkkhYncHcxI1t1LwZz7pHjDd0CdA+RUPQNNmbhZc08Rbr4XscXKn3rZx/qWUsHeaTlyoqqMnQZ
	oiDnzY8dIhshZJO7aBuMGSW30/ne+hWQfvnGsYB8PvX4kZtJDMKjKPxiBBFnjZPgGfYHPzhF8gMUT
	5CPobn4gacaPBoS03CEaRAJpOIF1PYuji3orE18kQsJ/Mtuod4tFp4zPQctaY3TCoK3sGJizDOTat
	11dZydF4yffIsf1m0Arw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU81n-005nsq-Ks; Fri, 02 Sep 2022 14:52:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU80v-005nIr-09; Fri, 02 Sep 2022 14:51:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 816B361CF7;
	Fri,  2 Sep 2022 14:51:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45782C43146;
	Fri,  2 Sep 2022 14:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662130279;
	bh=4Hkr87g3PnzCLM9ZxFNQa5qADO4ZTPUXVLBqOM+przo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=h89XrqJuOXVQ4/8j/RjAq2NaBhz3+B4MWMgpH+S85BBgwuJpO7HMyGFtHxu9/UISb
	 Ooo9ElCQqawa3/ew19xm+Tz8ntL2NNlg5mAxSK0mq26A0evpSb4NxGfhghyXeznQXl
	 /aHP8dyeitoacHRZMR1sxLILr14GNLypUZxk2V5lEPeSv+9Ou0tnxKyOviLCLvJGqH
	 nCTIO4INBz1uA6d8Mp3wUvJL8ixuaiePPI1AhxbL4ojKFomWDsXe4zwK1IqJNXOipd
	 sHAb2Ql5+ML2QYQ8EHQtg0orVkUV23sLA/WQA20OOSIVe1Qav+eGismKrmZ/GiiczB
	 WC/lWgSOFhgew==
Received: by mail-vk1-f181.google.com with SMTP id o12so1081171vkn.7;
        Fri, 02 Sep 2022 07:51:19 -0700 (PDT)
X-Gm-Message-State: ACgBeo0TEyWefjPABy3tzuX9VKchgs/ImRJUjwGPTl/qfA8d51N/eaX7
	4Ppbig4wBmhamOVzB5YWzKGaSMTY8LyoeFSvDQ==
X-Google-Smtp-Source: AA6agR7gPR2eoNK8OlOt6H6YcAAUxzaXErLPZTaQL7XqzgtAc9mBmf8rXIp3NGDWwMeU3NPODBPf4sb4u9Hs3ebXLSY=
X-Received: by 2002:a05:6122:d86:b0:37d:3fe:df43 with SMTP id
 bc6-20020a0561220d8600b0037d03fedf43mr10496067vkb.15.1662130278184; Fri, 02
 Sep 2022 07:51:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220823145649.3118479-4-robh@kernel.org> <13083804.uLZWGnKmhe@kista>
In-Reply-To: <13083804.uLZWGnKmhe@kista>
From: Rob Herring <robh@kernel.org>
Date: Fri, 2 Sep 2022 09:51:07 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJTgrSZcKNr1ky5LAXRQbj3MADMpCCYVC26rcZvzwY1Xw@mail.gmail.com>
Message-ID: <CAL_JsqJTgrSZcKNr1ky5LAXRQbj3MADMpCCYVC26rcZvzwY1Xw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mfd: Add missing (unevaluated|additional)Properties
 on child nodes
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc: Lee Jones <lee@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>, 
	Charles Keepax <ckeepax@opensource.cirrus.com>, 
	Richard Fitzgerald <rf@opensource.cirrus.com>, Tim Harvey <tharvey@gateworks.com>, 
	Robert Jones <rjones@gateworks.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, Heiko Stuebner <heiko@sntech.de>, 
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Maxime Ripard <mripard@kernel.org>, 
	- <patches@opensource.cirrus.com>, Steve Twiss <stwiss.opensource@diasemi.com>, 
	Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>, 
	Alistair Francis <alistair@alistair23.me>, Amelie Delaunay <amelie.delaunay@foss.st.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Renner Berthing <kernel@esmil.dk>, 
	Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, linux-sunxi@lists.linux.dev, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	"moderated list:ARM/STM32 ARCHITECTURE" <linux-stm32@st-md-mailman.stormreply.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_075121_173024_D8D9785C 
X-CRM114-Status: GOOD (  19.40  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBBdWcgMjUsIDIwMjIgYXQgMzo0OSBQTSBKZXJuZWogxaBrcmFiZWMgPGplcm5lai5z
a3JhYmVjQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBEbmUgdG9yZWssIDIzLiBhdmd1c3QgMjAyMiBv
YiAxNjo1NjozNSBDRVNUIGplIFJvYiBIZXJyaW5nIG5hcGlzYWwoYSk6Cj4gPiBJbiBvcmRlciB0
byBlbnN1cmUgb25seSBkb2N1bWVudGVkIHByb3BlcnRpZXMgYXJlIHByZXNlbnQsIG5vZGUgc2No
ZW1hcwo+ID4gbXVzdCBoYXZlIHVuZXZhbHVhdGVkUHJvcGVydGllcyBvciBhZGRpdGlvbmFsUHJv
cGVydGllcyBzZXQgdG8gZmFsc2UKPiA+ICh0eXBpY2FsbHkpLgo+ID4KPiA+IFNpZ25lZC1vZmYt
Ynk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gPiAtLS0KPiA+ICAuLi4vbWZkL2Fs
bHdpbm5lcixzdW42aS1hMzEtcHJjbS55YW1sICAgICAgICAgfCA0MCArKysrKysrKysrKysrKysr
KysrCj4gPiAgLi4uL21mZC9hbGx3aW5uZXIsc3VuOGktYTIzLXByY20ueWFtbCAgICAgICAgIHwg
MTAgKysrKysKPiA+ICAuLi4vYmluZGluZ3MvbWZkL2NpcnJ1cyxsb2NobmFnYXIueWFtbCAgICAg
ICAgfCAgNSArKysKPiA+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvZGxnLGRhOTA2My55
YW1sICAgfCAgNyArKy0tCj4gPiAgLi4uL2JpbmRpbmdzL21mZC9nYXRld29ya3MtZ3NjLnlhbWwg
ICAgICAgICAgIHwgIDUgKystCj4gPiAgLi4uL2JpbmRpbmdzL21mZC9tYXhpbSxtYXgxNDU3Ny55
YW1sICAgICAgICAgIHwgIDEgKwo+ID4gIC4uLi9iaW5kaW5ncy9tZmQvbWF4aW0sbWF4Nzc4NDMu
eWFtbCAgICAgICAgICB8ICAxICsKPiA+ICAuLi4vYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODE3
LnlhbWwgICAgICAgICAgfCAgMiArCj4gPiAgLi4uL2JpbmRpbmdzL21mZC9zaWxlcmd5LHN5NzYz
NmEueWFtbCAgICAgICAgIHwgIDEgKwo+ID4gIC4uLi9iaW5kaW5ncy9tZmQvc3Qsc3RtMzItbHB0
aW1lci55YW1sICAgICAgICB8ICA0ICsrCj4gPiAgLi4uL2JpbmRpbmdzL21mZC9zdCxzdG0zMi10
aW1lcnMueWFtbCAgICAgICAgIHwgIDMgKysKPiA+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9t
ZmQvc3Qsc3RtZngueWFtbCAgICAgfCAgMSArCj4gPiAgLi4uL2JpbmRpbmdzL21mZC9zdGVyaWNz
c29uLGFiODUwMC55YW1sICAgICAgIHwgMjIgKysrKysrKysrKwo+ID4gIC4uLi9kZXZpY2V0cmVl
L2JpbmRpbmdzL21mZC90aSx0cHM2NTA4Ni55YW1sICB8ICAxICsKPiA+ICAuLi4vYmluZGluZ3Mv
bWZkL3gtcG93ZXJzLGF4cDE1Mi55YW1sICAgICAgICAgfCAgMSArCj4gPiAgMTUgZmlsZXMgY2hh
bmdlZCwgMTAwIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdp
dAo+ID4gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL2FsbHdpbm5lcixz
dW42aS1hMzEtcHJjbS55YW1sCj4gPiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9tZmQvYWxsd2lubmVyLHN1bjZpLWEzMS1wcmNtLnlhbWwgaW5kZXgKPiA+IGQxMzE3NTljY2Fm
My4uMDIxZDMzY2IzZGQ2IDEwMDY0NAo+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL21mZC9hbGx3aW5uZXIsc3VuNmktYTMxLXByY20ueWFtbAo+ID4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9hbGx3aW5uZXIsc3VuNmktYTMxLXBy
Y20ueWFtbAo+ID4gQEAgLTIyLDYgKzIyLDcgQEAgcHJvcGVydGllczoKPiA+ICBwYXR0ZXJuUHJv
cGVydGllczoKPiA+ICAgICJeLipfKGNsa3xyc3QpJCI6Cj4gPiAgICAgIHR5cGU6IG9iamVjdAo+
ID4gKyAgICB1bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlCj4gPgo+ID4gICAgICBwcm9wZXJ0
aWVzOgo+ID4gICAgICAgIGNvbXBhdGlibGU6Cj4gPiBAQCAtMzQsNiArMzUsNDUgQEAgcGF0dGVy
blByb3BlcnRpZXM6Cj4gPiAgICAgICAgICAgIC0gZml4ZWQtZmFjdG9yLWNsb2NrCj4gPgo+ID4g
ICAgICBhbGxPZjoKPiA+ICsgICAgICAtIGlmOgo+ID4gKyAgICAgICAgICBwcm9wZXJ0aWVzOgo+
ID4gKyAgICAgICAgICAgIGNvbXBhdGlibGU6Cj4gPiArICAgICAgICAgICAgICBjb250YWluczoK
PiA+ICsgICAgICAgICAgICAgICAgY29uc3Q6IGZpeGVkLWZhY3Rvci1jbG9jawo+ID4gKwo+ID4g
KyAgICAgICAgdGhlbjoKPiA+ICsgICAgICAgICAgJHJlZjogL3NjaGVtYXMvY2xvY2svZml4ZWQt
ZmFjdG9yLWNsb2NrLnlhbWwjCj4gPiArCj4gPiArICAgICAgLSBpZjoKPiA+ICsgICAgICAgICAg
cHJvcGVydGllczoKPiA+ICsgICAgICAgICAgICBjb21wYXRpYmxlOgo+ID4gKyAgICAgICAgICAg
ICAgY29udGFpbnM6Cj4gPiArICAgICAgICAgICAgICAgIGNvbnN0OiBhbGx3aW5uZXIsc3VuNGkt
YTEwLW1vZDAtY2xrCj4gPiArCj4gPiArICAgICAgICB0aGVuOgo+ID4gKyAgICAgICAgICBwcm9w
ZXJ0aWVzOgo+ID4gKyAgICAgICAgICAgICIjY2xvY2stY2VsbHMiOgo+ID4gKyAgICAgICAgICAg
ICAgY29uc3Q6IDAKPiA+ICsKPiA+ICsgICAgICAgICAgICAjIEFscmVhZHkgY2hlY2tlZCBpbiB0
aGUgbWFpbiBzY2hlbWEKPiA+ICsgICAgICAgICAgICBjb21wYXRpYmxlOiB0cnVlCj4gPiArCj4g
PiArICAgICAgICAgICAgY2xvY2tzOgo+ID4gKyAgICAgICAgICAgICAgbWF4SXRlbXM6IDIKPgo+
IExhc3QgdGltZSBub2RlIHdpdGggYWxsd2lubmVyLHN1bjRpLWExMC1tb2QwLWNsayBjb21wYXRp
YmxlIHdhcyB1c2VkLCBpdCBoYWQgMwo+IGNsb2Nrcy4gU2VlOgo+IGh0dHBzOi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2Fy
Y2gvCj4gYXJtL2Jvb3QvZHRzL3N1bjRpLWExMC5kdHNpP2lkPWYxODY5OGUxYzY2MzM4YjkwMmRl
Mzg2ZTRhZDk3YjhiMWI5ZDk5OWQjbjQwNgoKSHVtbSwgd2UgYWxyZWFkeSBoYXZlIGNvbnN0cmFp
bnRzIGluCmJpbmRpbmdzL2Nsb2NrL2FsbHdpbm5lcixzdW40aS1hMTAtbW9kMC1jbGsueWFtbC4g
SSdsbCBqdXN0IG1ha2UgaXQKJ2Nsb2NrczogdHJ1ZScgaGVyZSBpbnN0ZWFkLgoKUm9iCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
