Return-Path: <SRS0=E4Dv=N6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.6 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D23CC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 05:08:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3B12260238
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 05:08:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3B12260238
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=web.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wF0Z/Lt6iWRvNvXAyNJy9hKJEpc701je/vwbtsOBvKo=; b=Flh+xDk1SAy4Mrvo2Y2mgXfq9k
	4D0etIFIm4I6ZMireGX6/Q4JFc1+ekwWKj4pTcMNKSzcGJXJGnY6ghUwNXb2ZGR0BDDuK4vCoMMBn
	S+0wR4LwDmmQ/eD9S24bNY4kGHunHzcxOUaMN3sl4Q3aa1hkl7y/T4jS09msdUkTZh6PU4omxA7Tk
	fFnCN4ydYMhEltmtAmtv2D5vNOj5CZv/y5mO3h/Y2H4iGvIFXc+0VDcAQGmQ+JUz/XO6+9Hb90wGL
	FU8V6pUHQHMp5hjSJZe4OgKFA8AtxFDfMzTeHXd/FI0qw0XeMLaqGfr76WOuSYA5Uz29cZZ4wLHY9
	Xlmy8A2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNpov-005NuQ-6U; Wed, 08 Sep 2021 05:08:25 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNpor-005Ntu-L0; Wed, 08 Sep 2021 05:08:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1631077692;
 bh=HD5Uo5oy545G/HclCWF9thUZO6gf1AG7l8gK2j59nkw=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=UZ4Xg8zzaFYEWVmwBd64DmSA4V/oAdDY0rl8eZCZYB6v2QsaBzqIa6wQ8gP48NuDI
 AlygNmOWrKdbQIUYcuXW1tEzrEP6z2Bf2Yymgxo4c33xLoDoYc5zNXAFpKVVXBNazp
 DlnTw+YVUUciREC3CQ8hZRsko4rcMD9b0EMbyCK8=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.27] ([77.183.4.164]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MJlCO-1mOvkG2CG4-0019nN; Wed, 08
 Sep 2021 07:08:12 +0200
Subject: Re: [BUG] Re: [PATCH] brcmfmac: use ISO3166 country code and 0 rev as
 fallback
To: Shawn Guo <shawn.guo@linaro.org>
Cc: Kalle Valo <kvalo@codeaurora.org>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>, Arend van Spriel <aspriel@gmail.com>,
 Franky Lin <franky.lin@broadcom.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Chi-hsien Lin <chi-hsien.lin@infineon.com>,
 Wright Feng <wright.feng@infineon.com>,
 Chung-hsien Hsu <chung-hsien.hsu@infineon.com>,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 brcm80211-dev-list.pdl@broadcom.com, SHA-cyfmac-dev-list@infineon.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
References: <20210425110200.3050-1-shawn.guo@linaro.org>
 <cb7ac252-3356-8ef7-fcf9-eb017f5f161f@web.de> <20210908010057.GB25255@dragon>
From: Soeren Moch <smoch@web.de>
Message-ID: <100f5bef-936c-43f1-9b3e-a477a0640d84@web.de>
Date: Wed, 8 Sep 2021 07:08:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210908010057.GB25255@dragon>
Content-Language: en-GB
X-Provags-ID: V03:K1:rnZXS+qjfSYuAJB7XUhJsPzp8AYNANO+cxeRGgt00dy1YHCZ5sS
 TFrQkZ63oekGGXn2gipiOTZKBV6oxMU2jgrLlZoMB1OUD17c7HUbYh9p5iW0KmCDbMqPZ0D
 rLIg4tmlPdV1zAwftoNdIBT/GZ8jA+1wFAO+OGtsZ7zZHahY2WnR40ECo//4+IhunhyJi+O
 QvxWy06jDGAjqf5KixroQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:MXNMcLnxsX8=:ZvyzPEHMhk5vuazE/XgT66
 xgMYtPgiYFhGbV8SdlbvszMyxr+jydbD14GpeT2jaL4UAZITdWQgs689rUH9QNrFap5w6ppzB
 LqlG77M0Lm0c/VuOJ86vfsgnXsrG6ASpGrlaEKliFe1zkWUQoRs9CeCKLvCBclg0uUkfTb6ks
 P1X2CcGQ9DSldGwMgL68gs2/DYskkWpl+Vkl21JLQP3//Q2p1KD/WBeTvajWcnT/tslAVM0FF
 dDF2f0Lel0TDM6QSsvqc9xGwebwpH+bgm9dMpw/DeKnPHE5x0BYuAiNFtniW8gAG9NBeoTcd0
 4ay0LUADL2zJLQgG7MZ1KMX91UasnCt59K8C9flGd4DEgeVjT/NMjYH1/CH7Ykth1uRqWyeGu
 AGbQ975YMoAsPV/zQRwe5xCiEbBPAm4dn46eRGGVlsIow3xAoqW38VBGFtYHon3B4a4Fq4YLJ
 3lwHmy22AgGplb3h/8dYVBF2PFyCgpHsiP8UFhZUJ368FamUD5GEkCYzXnIzRfNOAHQGMh9JC
 Xu02B8rlzXO4B/y9d194MXl5iPCmOM15kWXm5sd3VHel3gab/EPG6FcM3ibyFdnbT9BY6dgbF
 nXSPVKINBLT7ToRAwwKZ5qYKImncr7ThnU+OTSLc7eI9kF0RAI6hQWrCASlVcyKcJpNRp3gd2
 P2LdOzzMDfN0iIZuiKBkCvmZ/3q1RSYlEesoj1NyppQzfydx2/807bMkKD2/dIr64hlLp7vsb
 IDYMKTAd7RTAzVf+FnUSQ13x9mYP9aUdZjZciAd0OIn7godoMdTihwPAeQ6falShfdP+sYDwK
 ZLI1HVOJgq3w7Q6SqQa9a9LhX7r6IBRECT+9KuklbiX8iY4xSrgmzxXcLYvQ+rkwE3QNNjOYC
 uMEGGJr09TRqB0bWgI/iRVBzLMgEyl1KC+9UZwphB5dg4lfcRbKnFRsMKqGLVQUJWAqUFndBl
 s+ZwadzXL+RInVIa5lVENjD0cJpnzXFjsxuErD3gKOgc8ZTCAHqZidrjUu6BI4/SYATLffTvU
 dGntLsDT1MVZptWsQJiosZD7XV/tkYSabt3FMgcKa6I5EGExhmg4sDGg/VS4hDDtxds1BVyIj
 cHZOR3GwXUlgyzkDrjcZHgSAQbA9gSmj0CF
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_220822_072596_CA128CF8 
X-CRM114-Status: GOOD (  30.19  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgU2hhd24sCgpPbiAwOC4wOS4yMSAwMzowMCwgU2hhd24gR3VvIHdyb3RlOgo+IEhpIFNvZXJl
biwKPgo+IE9uIFR1ZSwgU2VwIDA3LCAyMDIxIGF0IDA5OjIyOjUyUE0gKzAyMDAsIFNvZXJlbiBN
b2NoIHdyb3RlOgo+PiBPbiAyNS4wNC4yMSAxMzowMiwgU2hhd24gR3VvIHdyb3RlOgo+Pj4gSW5z
dGVhZCBvZiBhYm9ydGluZyBjb3VudHJ5IGNvZGUgc2V0dXAgaW4gZmlybXdhcmUsIHVzZSBJU08z
MTY2IGNvdW50cnkKPj4+IGNvZGUgYW5kIDAgcmV2IGFzIGZhbGxiYWNrLCB3aGVuIGNvdW50cnlf
Y29kZXMgbWFwcGluZyB0YWJsZSBpcyBub3QKPj4+IGNvbmZpZ3VyZWQuICBUaGlzIGZhbGxiYWNr
IHNhdmVzIHRoZSBjb3VudHJ5X2NvZGVzIHRhYmxlIHNldHVwIGZvciByZWNlbnQKPj4+IGJyY21m
bWFjIGNoaXBzZXRzL2Zpcm13YXJlcywgd2hpY2gganVzdCB1c2UgSVNPMzE2NiBjb2RlIGFuZCBy
ZXF1aXJlIG5vCj4+PiByZXZpc2lvbiBudW1iZXIuCj4+IFRoaXMgcGF0Y2ggYnJlYWtzIHdpcmVs
ZXNzIHN1cHBvcnQgb24gUm9ja1BybzY0LiBBdCBsZWFzdCB0aGUgYWNjZXNzCj4+IHBvaW50IGlz
IG5vdCB1c2FibGUsIHN0YXRpb24gbW9kZSBub3QgdGVzdGVkLgo+Pgo+PiBicmNtZm1hYzogYnJj
bWZfY19wcmVpbml0X2RjbWRzOiBGaXJtd2FyZTogQkNNNDM1OS85IHdsMDogTWFywqAgNiAyMDE3
Cj4+IDEwOjE2OjA2IHZlcnNpb24gOS44Ny41MS43IChyNjg2MzEyKSBGV0lEIDAxLTRkY2M3NWQ5
Cj4+Cj4+IFJldmVydGluZyB0aGlzIHBhdGNoIG1ha2VzIHRoZSBhY2Nlc3MgcG9pbnQgc2hvdyB1
cCBhZ2FpbiB3aXRoIGxpbnV4LTUuMTQgLgo+IFNvcnJ5IGZvciBicmVha2luZyB5b3VyIGRldmlj
ZSEKPgo+IFNvIGl0IHNvdW5kcyBsaWtlIHlvdSBkbyBub3QgaGF2ZSBjb3VudHJ5X2NvZGVzIGNv
bmZpZ3VyZWQgZm9yIHlvdXIKPiBCQ000MzU5LzkgZGV2aWNlLCB3aGlsZSBpdCBuZWVkcyBwYXJ0
aWN1bGFyIGByZXZgIHNldHVwIGZvciB0aGUgY2NvZGUKPiB5b3UgYXJlIHRlc3Rpbmcgd2l0aC4g
IEl0IHdhcyAid29ya2luZyIgbGlrZWx5IGJlY2F1c2UgeW91IGhhdmUgYSBzdGF0aWMKPiBgY2Nv
ZGVgIGFuZCBgcmVncmV2YCBzZXR0aW5nIGluIG52cmFtIGZpbGUuCkl0IGFsd2F5cyBoYXMgYmVl
biBhIG15c3RlcnkgdG8gbWUgaG93IGNvdW50cnkgY29kZXMgYXJlIGNvbmZpZ3VyZWQgZm9yCnRo
aXMgZGV2aWNlLiBCZWZvcmUgSSByZWFkIHlvdXIgcGF0Y2ggSSBkaWQgbm90IGV2ZW4ga25vdyB0
aGF0IGEKdHJhbnNsYXRpb24gdGFibGUgaXMgcmVxdWlyZWQuIElzIHRoZXJlIHNvbWUgZG9jdW1l
bnRhdGlvbiBob3cgdGhpcyBpcwpzdXBwb3NlZCB0byB3b3JrPyBOb3Qgc3VyZSBpZiB0aGlzIG1h
a2VzIGEgZGlmZmVyZW5jZSwgQkNNNDM1OS85IGlzIGEKQ3lwcmVzcyBkZXZpY2UgSSB0aGluaywg
SSBhZGRlZCBtYWlubGluZSBzdXBwb3J0IGZvciBpdCBzb21lIHRpbWUgYWdvLgoKSSBoYXZlIGlu
c3RhbGxlZCBkaWZmZXJlbnQgZmlybXdhcmUgZmlsZXMsIGJyY21mbWFjNDM1OS1zZGlvLmNsbV9i
bG9iLApicmNtZm1hYzQzNTktc2Rpby5iaW4sIGJyY21mbWFjNDM1OS1zZGlvLnR4dCwgdGhlIGxh
dHRlciBhbHNvIGxpbmtlZCBhcwpicmNtZm1hYzQzNTktc2Rpby5waW5lNjQscm9ja3BybzY0LTIu
MS50eHQuIFRoaXMgcHJvYmFibHkgaXMgdGhlIG52cmFtCmZpbGUuIGNjb2RlIGFuZCByZWdyZXYg
YXJlIHNldCB0byB6ZXJvLCB3aGljaCBwcm9iYWJseSBtZWFucwonaW50ZXJuYXRpb25hbCBzYXZl
IHNldHRpbmdzIi4KPiBCdXQgcm9hbWluZyB0byBhIGRpZmZlcmVudAo+IHJlZ2lvbiB3aWxsIG1v
c3RseSBnZXQgeW91IGEgYnJva2VuIFdpRmkgc3VwcG9ydC4gIElzIGl0IHBvc3NpYmxlIHRvIHNl
dAo+IHVwIHRoZSBjb3VudHJ5X2NvZGVzIGZvciB5b3VyIGRldmljZSB0byBnZXQgaXQgd29yayBw
cm9wZXJseT8KSW4gbGludXgtNS4xMyBpdCB3b3JrZWQsIHByb2JhYmx5IHdpdGggc2F2ZSBzZXR0
aW5ncyAobm90IGFsbCBjaGFubmVscwpzZWxlY3RhYmxlLCBsaW1pdGVkIHR4IHBvd2VyKSwgd2l0
aCBsaW51eC01LjE0IGl0IHN0b3BwZWQgd29ya2luZywgc28gaXQKaXMgYSByZWdyZXNzaW9uLgpJ
IHBlcnNvbmFsbHkgd291bGQgbGlrZSB0byBsZWFybiBob3cgYWxsIHRoaXMgaXMgY29uZmlndXJl
ZCBwcm9wZXJseS4KRm9yIGdlbmVyYWwgdXNlIEkgdGhpbmsgc2F2ZSBzZXR0aW5ncyBhcmUgYmV0
dGVyIHRoYW4gbm8gd2lmaSBhdCBhbGwKd2l0aCB0aGlzIHBhdGNoLiBUaGlzIGZhbGxiYWNrIHRv
IElTTyBDQyBzZWFtcyB0byB3b3JrIHdpdGggbmV3ZXIKKFN5bmFwdGljcz8pIGRldmljZXMgb25s
eS4KClNvZXJlbgo+Cj4gU2hhd24KPgo+PiBSZWdhcmRzLAo+PiBTb2VyZW4KPj4+IFNpZ25lZC1v
ZmYtYnk6IFNoYXduIEd1byA8c2hhd24uZ3VvQGxpbmFyby5vcmc+Cj4+PiAtLS0KPj4+ICAuLi4v
YnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL2NmZzgwMjExLmMgICAgICB8IDE3ICsrKysrKysr
KysrLS0tLS0tCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDYgZGVsZXRp
b25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29t
L2JyY204MDIxMS9icmNtZm1hYy9jZmc4MDIxMS5jIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJv
YWRjb20vYnJjbTgwMjExL2JyY21mbWFjL2NmZzgwMjExLmMKPj4+IGluZGV4IGY0NDA1ZDc4NjFi
Ni4uNmNiMDljN2MzN2I2IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJv
YWRjb20vYnJjbTgwMjExL2JyY21mbWFjL2NmZzgwMjExLmMKPj4+ICsrKyBiL2RyaXZlcnMvbmV0
L3dpcmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9jZmc4MDIxMS5jCj4+PiBAQCAt
NzQ0MiwxOCArNzQ0MiwyMyBAQCBzdGF0aWMgczMyIGJyY21mX3RyYW5zbGF0ZV9jb3VudHJ5X2Nv
ZGUoc3RydWN0IGJyY21mX3B1YiAqZHJ2ciwgY2hhciBhbHBoYTJbMl0sCj4+PiAgCXMzMiBmb3Vu
ZF9pbmRleDsKPj4+ICAJaW50IGk7Cj4+Pgo+Pj4gLQljb3VudHJ5X2NvZGVzID0gZHJ2ci0+c2V0
dGluZ3MtPmNvdW50cnlfY29kZXM7Cj4+PiAtCWlmICghY291bnRyeV9jb2Rlcykgewo+Pj4gLQkJ
YnJjbWZfZGJnKFRSQUNFLCAiTm8gY291bnRyeSBjb2RlcyBjb25maWd1cmVkIGZvciBkZXZpY2Vc
biIpOwo+Pj4gLQkJcmV0dXJuIC1FSU5WQUw7Cj4+PiAtCX0KPj4+IC0KPj4+ICAJaWYgKChhbHBo
YTJbMF0gPT0gY2NyZXEtPmNvdW50cnlfYWJicmV2WzBdKSAmJgo+Pj4gIAkgICAgKGFscGhhMlsx
XSA9PSBjY3JlcS0+Y291bnRyeV9hYmJyZXZbMV0pKSB7Cj4+PiAgCQlicmNtZl9kYmcoVFJBQ0Us
ICJDb3VudHJ5IGNvZGUgYWxyZWFkeSBzZXRcbiIpOwo+Pj4gIAkJcmV0dXJuIC1FQUdBSU47Cj4+
PiAgCX0KPj4+Cj4+PiArCWNvdW50cnlfY29kZXMgPSBkcnZyLT5zZXR0aW5ncy0+Y291bnRyeV9j
b2RlczsKPj4+ICsJaWYgKCFjb3VudHJ5X2NvZGVzKSB7Cj4+PiArCQlicmNtZl9kYmcoVFJBQ0Us
ICJObyBjb3VudHJ5IGNvZGVzIGNvbmZpZ3VyZWQgZm9yIGRldmljZSwgdXNpbmcgSVNPMzE2NiBj
b2RlIGFuZCAwIHJldlxuIik7Cj4+PiArCQltZW1zZXQoY2NyZXEsIDAsIHNpemVvZigqY2NyZXEp
KTsKPj4+ICsJCWNjcmVxLT5jb3VudHJ5X2FiYnJldlswXSA9IGFscGhhMlswXTsKPj4+ICsJCWNj
cmVxLT5jb3VudHJ5X2FiYnJldlsxXSA9IGFscGhhMlsxXTsKPj4+ICsJCWNjcmVxLT5jY29kZVsw
XSA9IGFscGhhMlswXTsKPj4+ICsJCWNjcmVxLT5jY29kZVsxXSA9IGFscGhhMlsxXTsKPj4+ICsJ
CXJldHVybiAwOwo+Pj4gKwl9Cj4+PiArCj4+PiAgCWZvdW5kX2luZGV4ID0gLTE7Cj4+PiAgCWZv
ciAoaSA9IDA7IGkgPCBjb3VudHJ5X2NvZGVzLT50YWJsZV9zaXplOyBpKyspIHsKPj4+ICAJCWNj
ID0gJmNvdW50cnlfY29kZXMtPnRhYmxlW2ldOwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
