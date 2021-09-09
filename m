Return-Path: <SRS0=gAqv=N7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A090C43217
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Sep 2021 08:40:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 219C161186
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Sep 2021 08:40:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 219C161186
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=web.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AiLjZeTFp/1TeCuXXg3O52vUvt7pZU0r98gz6yIfr9w=; b=HS1GDBNee6BvOVq0ox8CWFiSmu
	F0jdwW2vyU8Cu11CTrbxxEjdKy16+CPIWgmG266OXXGqZK9wqmokA889QCna3Vn4/NyT0JVecsJoA
	clV/nLdLjeXNP0hCy0NkgIBbTQm/b2hMZCiZ+BDM/LpnCfAmSRwxpcVQQnTi1aN6Gw/T3sSRVC67g
	vGk5LPrF0wBFevesv9i/NfxI79WJgYdkxPUYiDEVo8wFzn0XHBHkxOxGWupGHWAJJVVc1NfL5Qizi
	gUU7Cbg8pvFFYInfRuDtoTbTW9vRpXYYW4yQ2Z3ArA400ERdLyLYj+kF5mfhoodPIQSzE/Pd1v1Gu
	JCiGRLNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOFbi-008alz-O9; Thu, 09 Sep 2021 08:40:30 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOFbf-008ake-Ja; Thu, 09 Sep 2021 08:40:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1631176809;
 bh=TDYtB2JcYZdl2exMRt0DaFOKdnm/cLDcrA9GN52GAs0=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=fSfy+5e1UPRsu1uF5sKdX2j2N0MwJp8oKakSA3Ghq6orbX06lTOtPVkiWJ99uuhZ0
 NaXpF3Ivxq9zMQqXvRpAqqBJoRl7cYTTVwILl0SIyZaf7l7p0BWVAkvzZ0XJ1Plitt
 UJvfR2yjurGaWnUlIemidx0jAf3QYSK4IYIwIUpg=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.27] ([89.14.20.203]) by smtp.web.de (mrweb002
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0Lp7Lg-1mu27Z2Gcm-00esRM; Thu, 09
 Sep 2021 10:40:09 +0200
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
 <100f5bef-936c-43f1-9b3e-a477a0640d84@web.de> <20210909022033.GC25255@dragon>
From: Soeren Moch <smoch@web.de>
Message-ID: <56e9a81a-4e05-cf5e-a8df-782ac75fdbe6@web.de>
Date: Thu, 9 Sep 2021 10:39:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210909022033.GC25255@dragon>
Content-Language: en-GB
X-Provags-ID: V03:K1:vnwaoO3CKyw/+P4arC4J3P4RilNP9UxvfkXbCFPrAJIrWhE4fas
 zfTZToRbEd21n7qaSwo4h+jRz9xC+YhpWn/OS1t3M8iT/0zs6uO3+S73pyeuhEFRB0IvOU8
 I/94oMJXXOT0uxGH7UlbWA0XteN5tflAjhTgaPnMOWuINuz1mje6JORCp/jsjdKWz5YmVRS
 j9WpQeEtbJMRd8sn+9QrQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:cjiZyj6VQ8M=:tS9nCgiRMtk20B3olBKG1G
 i7vEnrFk/td2e6qasyeRW+yOOPCSHYwaz4rHirW+lqUs9RWqgA3bqShbDqrizKkQ8d2BEAMGY
 7p322fSSqg0IybRkY3mvn7LlxG2vO/RoXYw84rGUukD1ui1vjmKHBoK30/m3UGs3k2qoTsVOv
 phcAp28BivYXyRd9qBxIZWvCsh0I6p10x36LC1hioLlglqYS4Og0tJ2lAzJwuqqFd+uxRur6D
 FZS4dpVXZKVaO2qwn9plD7sCxjdFl4ZgmnxoKNg4Mt61kjzeq+L7hhbYn1SwtvC+2gxCRpjI1
 DcO9w8RQC+Nnh8DGzMuS/uF1zhbxQIWrGE6NUCIrLktrwG+8AbMKDPTUJI0wjjCWFVwc3LSF9
 zTBpleJ/25MDG+kWSUHWWdlh+Cmr6KjJzbtK2a4Ot9AQO9TlFy0dM4QmRELgyEkExpF6MNWfU
 KQb/PdJfLxT4VBB0gh44zbC5qf29bgf2z4weP3AMBM0t/PPmCLKtjVTBCP5nzOOd2CHp6cqQb
 lypkay97BJ/w2aTojQ0Mzq4nk9/qaXiayn8ejES+MDrk06mEu+Ujwfxff88o53Zcd8FDnxQuH
 PDDrM9wdxmRScumrFQ2WUL2FZ27hQR+xzz7J4V9jQfn7Z3/FDHb8lQRCrx8EhxDmkx0aaetSK
 lU815ldge1H70AojNkvUpzT2I2uith2lQlmYLyw9kX0EyqzHBEY/2EaPvcmNBi5mgSyyd3jQZ
 xEo5sTR7T8UhLJk1GOkGUxv0dUiMp3fQ8ANdpf3zO4nox5cr56qoNKuzWY8ZjudvMsrg7gw/3
 5BlNOo6DoxMd5OzDRgaXXEht3oRST9umn+9WU4HKVEGcjJHsxlMG9394naDrDaMmRmnsa9Fjs
 U+U4HciMWGkFI9CAJ1UZzunqT56R/ngnqIQbmgLctn7Ds9k1PBj7KYdzc5SxVAqu2P5vf69P+
 5s4IGfTtIXskEft6YUOIFz8I5wW5jrBkiFF1Sy9KWmO+M9M5An4H0uqtfTNvJYNmwAlxgM6YE
 oHxFB1SB9LR8b0enkJDUl3IP+c9SvO8HlhF2RHf3Tp/G9hmsI21jsaN6mMtb5fkbkPV/mPrTf
 TXF4lrIgIyKIz8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210909_014028_052253_0DD80984 
X-CRM114-Status: GOOD (  33.42  )
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

SGkgU2hhd24sCgpPbiAwOS4wOS4yMSAwNDoyMCwgU2hhd24gR3VvIHdyb3RlOgo+IE9uIFdlZCwg
U2VwIDA4LCAyMDIxIGF0IDA3OjA4OjA2QU0gKzAyMDAsIFNvZXJlbiBNb2NoIHdyb3RlOgo+PiBI
aSBTaGF3biwKPj4KPj4gT24gMDguMDkuMjEgMDM6MDAsIFNoYXduIEd1byB3cm90ZToKPj4+IEhp
IFNvZXJlbiwKPj4+Cj4+PiBPbiBUdWUsIFNlcCAwNywgMjAyMSBhdCAwOToyMjo1MlBNICswMjAw
LCBTb2VyZW4gTW9jaCB3cm90ZToKPj4+PiBPbiAyNS4wNC4yMSAxMzowMiwgU2hhd24gR3VvIHdy
b3RlOgo+Pj4+PiBJbnN0ZWFkIG9mIGFib3J0aW5nIGNvdW50cnkgY29kZSBzZXR1cCBpbiBmaXJt
d2FyZSwgdXNlIElTTzMxNjYgY291bnRyeQo+Pj4+PiBjb2RlIGFuZCAwIHJldiBhcyBmYWxsYmFj
aywgd2hlbiBjb3VudHJ5X2NvZGVzIG1hcHBpbmcgdGFibGUgaXMgbm90Cj4+Pj4+IGNvbmZpZ3Vy
ZWQuICBUaGlzIGZhbGxiYWNrIHNhdmVzIHRoZSBjb3VudHJ5X2NvZGVzIHRhYmxlIHNldHVwIGZv
ciByZWNlbnQKPj4+Pj4gYnJjbWZtYWMgY2hpcHNldHMvZmlybXdhcmVzLCB3aGljaCBqdXN0IHVz
ZSBJU08zMTY2IGNvZGUgYW5kIHJlcXVpcmUgbm8KPj4+Pj4gcmV2aXNpb24gbnVtYmVyLgo+Pj4+
IFRoaXMgcGF0Y2ggYnJlYWtzIHdpcmVsZXNzIHN1cHBvcnQgb24gUm9ja1BybzY0LiBBdCBsZWFz
dCB0aGUgYWNjZXNzCj4+Pj4gcG9pbnQgaXMgbm90IHVzYWJsZSwgc3RhdGlvbiBtb2RlIG5vdCB0
ZXN0ZWQuCj4+Pj4KPj4+PiBicmNtZm1hYzogYnJjbWZfY19wcmVpbml0X2RjbWRzOiBGaXJtd2Fy
ZTogQkNNNDM1OS85IHdsMDogTWFywqAgNiAyMDE3Cj4+Pj4gMTA6MTY6MDYgdmVyc2lvbiA5Ljg3
LjUxLjcgKHI2ODYzMTIpIEZXSUQgMDEtNGRjYzc1ZDkKPj4+Pgo+Pj4+IFJldmVydGluZyB0aGlz
IHBhdGNoIG1ha2VzIHRoZSBhY2Nlc3MgcG9pbnQgc2hvdyB1cCBhZ2FpbiB3aXRoIGxpbnV4LTUu
MTQgLgo+Pj4gU29ycnkgZm9yIGJyZWFraW5nIHlvdXIgZGV2aWNlIQo+Pj4KPj4+IFNvIGl0IHNv
dW5kcyBsaWtlIHlvdSBkbyBub3QgaGF2ZSBjb3VudHJ5X2NvZGVzIGNvbmZpZ3VyZWQgZm9yIHlv
dXIKPj4+IEJDTTQzNTkvOSBkZXZpY2UsIHdoaWxlIGl0IG5lZWRzIHBhcnRpY3VsYXIgYHJldmAg
c2V0dXAgZm9yIHRoZSBjY29kZQo+Pj4geW91IGFyZSB0ZXN0aW5nIHdpdGguICBJdCB3YXMgIndv
cmtpbmciIGxpa2VseSBiZWNhdXNlIHlvdSBoYXZlIGEgc3RhdGljCj4+PiBgY2NvZGVgIGFuZCBg
cmVncmV2YCBzZXR0aW5nIGluIG52cmFtIGZpbGUuCj4+IEl0IGFsd2F5cyBoYXMgYmVlbiBhIG15
c3RlcnkgdG8gbWUgaG93IGNvdW50cnkgY29kZXMgYXJlIGNvbmZpZ3VyZWQgZm9yCj4+IHRoaXMg
ZGV2aWNlLiBCZWZvcmUgSSByZWFkIHlvdXIgcGF0Y2ggSSBkaWQgbm90IGV2ZW4ga25vdyB0aGF0
IGEKPj4gdHJhbnNsYXRpb24gdGFibGUgaXMgcmVxdWlyZWQuIElzIHRoZXJlIHNvbWUgZG9jdW1l
bnRhdGlvbiBob3cgdGhpcyBpcwo+PiBzdXBwb3NlZCB0byB3b3JrPyBOb3Qgc3VyZSBpZiB0aGlz
IG1ha2VzIGEgZGlmZmVyZW5jZSwgQkNNNDM1OS85IGlzIGEKPj4gQ3lwcmVzcyBkZXZpY2UgSSB0
aGluaywgSSBhZGRlZCBtYWlubGluZSBzdXBwb3J0IGZvciBpdCBzb21lIHRpbWUgYWdvLgo+IE9u
ZSB3YXkgdG8gYWRkIHRoZSB0cmFuc2xhdGlvbiB0YWJsZSBpcyB1c2luZyBEVC4gIFlvdSBjYW4g
ZmluZCBtb3JlCj4gaW5mbyBhbmQgZXhhbXBsZSBpbiBmb2xsb3dpbmcgY29tbWl0czoKPgo+IGI0
MTkzNjIyNzA3OCAoImR0LWJpbmRpbmdzOiBiY200MzI5LWZtYWM6IGFkZCBvcHRpb25hbCBicmNt
LGNjb2RlLW1hcCIpCj4gMWEzYWM1YzY1MWEwICgiYnJjbWZtYWM6IHN1cHBvcnQgcGFyc2UgY291
bnRyeSBjb2RlIG1hcCBmcm9tIERUIikKT0ssIHRoYW5rcy4KV2hlbiBvbmUgd2F5IGlzIHRvIHVz
ZSBEVCwgd2hhdCBpcyB0aGUgJ3RyYWRpdGlvbmFsIHdheScgdG8gYWRkIHN1Y2ggdGFibGU/CgpB
bmQgbWF5YmUgdGhlIG1vcmUgaW50ZXJlc3RpbmcgcXVlc3Rpb24sIHdoZXJlIGNhbiB0aGVzZSBz
ZXR0aW5ncyBiZQpvYnRhaW5lZCBmcm9tPyBUaGUgdHdlYWtlZCBkZXZpY2Ugc3BlY2lmaWMgc2V0
dGluZ3MgcHJvYmFibHkgZnJvbSB0aGUKZGV2aWNlIHZlbmRvciwgZ29vZCBsdWNrIQpCdXQgdGhl
IGdlbmVyYWwgY291bnRyeSBzcGVjaWZpYyBzZXR0aW5ncywgYXMgeW91IGFyZSBvYnZpb3VzbHkK
aW50ZXJlc3RlZCBpbiB3aXRoIHlvdXIgdHJpdmlhbCBtYXBwaW5nLCBzaG91bGRuJ3QgdGhleSBn
byBpbnRvIGRyaXZlcgpkaXJlY3RseT8gT25seSB0byBiZSBvdmVycnVsZWQgd2hlbiBkZXZpY2Ug
c3BlY2lmaWMgc2V0dGluZ3MgYXJlCmF2YWlsYWJsZSB2aWEgRFQ/IEFuZCBvZiBjb3Vyc2Ugb25s
eSBmb3IgZGV2aWNlL2Zpcm13YXJlIGNvbWJpbmF0aW9ucwp0aGF0IHN1cHBvcnQgdGhpcyBnZW5l
cmFsIG1hcHBpbmcsIHNvIHRoYXQgb3RoZXIgZGV2aWNlcyB3aXRoICd1bmtub3duCm1hcHBpbmcn
IGFyZSBub3QgYnJva2VuIGJ5IHRoaXMgZW5oYW5jZW1lbnQ/Cj4+IEkgaGF2ZSBpbnN0YWxsZWQg
ZGlmZmVyZW50IGZpcm13YXJlIGZpbGVzLCBicmNtZm1hYzQzNTktc2Rpby5jbG1fYmxvYiwKPj4g
YnJjbWZtYWM0MzU5LXNkaW8uYmluLCBicmNtZm1hYzQzNTktc2Rpby50eHQsIHRoZSBsYXR0ZXIg
YWxzbyBsaW5rZWQgYXMKPj4gYnJjbWZtYWM0MzU5LXNkaW8ucGluZTY0LHJvY2twcm82NC0yLjEu
dHh0LiBUaGlzIHByb2JhYmx5IGlzIHRoZSBudnJhbQo+PiBmaWxlLiBjY29kZSBhbmQgcmVncmV2
IGFyZSBzZXQgdG8gemVybywgd2hpY2ggcHJvYmFibHkgbWVhbnMKPj4gJ2ludGVybmF0aW9uYWwg
c2F2ZSBzZXR0aW5ncyIuCj4gSSdtIG5vdCBzdXJlIGhvdyB0aGlzICdpbnRlcm5hdGlvbmFsIHNh
dmUgc2V0dGluZ3MnIHdvcmtzIGZvciBicmNtZm1hYwo+IGRldmljZXMuICBEbyB5b3UgaGF2ZSBt
b3JlIGluZm8gb3IgYW55IHBvaW50ZXJzPwpUaGUgY29ycmVjdCB0ZXJtIGluIHRoaXMgY29udGV4
dCBwcm9iYWJseSBpcyAnd29ybGQgcmVndWxhdG9yeSBkb21haW4nLAp0aGUgbW9zdCByZXN0cmlj
dGl2ZSB3aWZpIHNldHRpbmdzIHRoYXQgY2FuIGJlIHVzZWQgYWxsIG92ZXIgdGhlIHdvcmxkLgpU
aGlzIHVzdWFsbHkgaXMgdGFrZW4gYXMgZGVmYXVsdCBieSBjZmc4MDIxMSwgYXBwYXJlbnRseSBh
bHNvIGZvcgooc29tZT8pIGJyY21mbWFjIGRldmljZXMvZmlybXdhcmVzLgoKVGhlc2UgJ3dvcmxk
JyBzZXR0aW5ncyBjYW4gYmUgcmVwbGFjZWQgYnkgbW9yZSBwZXJtaXNzaXZlIGNvdW50cnkKc3Bl
Y2lmaWMgcmVndWxhdG9yeSBkb21haW4gc2V0dGluZ3MsIGJ1dCBmb3IgYnJjbWZtYWMgZGV2aWNl
cyB0aGlzIHNlZW1zCnRvIGJlIGZpcm13YXJlIHNwZWNpZmljIGFuZCByZXF1aXJlcyB0aGlzIGNv
dW50cnkgbWFwcGluZy4KCkkgaGF2ZSBzZWVuIGEgY291bnRyeSBjb2RlICIwMCIgZm9yIHRoZSB3
b3JsZCByZWd1bGF0b3J5IGRvbWFpbiBpbiB0aGUKcGFzdCwgbm90IHN1cmUgaWYgdGhpcyBpcyBz
dGFuZGFyZCBvciBhIGRldmljZS9kcml2ZXIvc29mdHdhcmUgc3BlY2lmaWMKaGFjayBhbmQgaWYg
dGhpcyBjYW4gYmUgdXNlZCBmb3IgYnJjbWZtYWMgKG1hcHBpbmcgZnJvbSBzdHJpbmcgIjAwIiB0
bwpjb3VudHJ5X2NvZGU9MCA/KS4gRm9yIHN1cmUgaGVyZSBhcmUgbW9yZSBleHBlcmllbmNlZCB3
aWZpIGRldmVsb3BlcnMKd2hvIGtub3cgYmV0dGVyLgo+Pj4gQnV0IHJvYW1pbmcgdG8gYSBkaWZm
ZXJlbnQKPj4+IHJlZ2lvbiB3aWxsIG1vc3RseSBnZXQgeW91IGEgYnJva2VuIFdpRmkgc3VwcG9y
dC4gIElzIGl0IHBvc3NpYmxlIHRvIHNldAo+Pj4gdXAgdGhlIGNvdW50cnlfY29kZXMgZm9yIHlv
dXIgZGV2aWNlIHRvIGdldCBpdCB3b3JrIHByb3Blcmx5Pwo+PiBJbiBsaW51eC01LjEzIGl0IHdv
cmtlZCwgcHJvYmFibHkgd2l0aCBzYXZlIHNldHRpbmdzIChub3QgYWxsIGNoYW5uZWxzCj4+IHNl
bGVjdGFibGUsIGxpbWl0ZWQgdHggcG93ZXIpLCB3aXRoIGxpbnV4LTUuMTQgaXQgc3RvcHBlZCB3
b3JraW5nLCBzbyBpdAo+PiBpcyBhIHJlZ3Jlc3Npb24uCj4+IEkgcGVyc29uYWxseSB3b3VsZCBs
aWtlIHRvIGxlYXJuIGhvdyBhbGwgdGhpcyBpcyBjb25maWd1cmVkIHByb3Blcmx5Lgo+PiBGb3Ig
Z2VuZXJhbCB1c2UgSSB0aGluayBzYXZlIHNldHRpbmdzIGFyZSBiZXR0ZXIgdGhhbiBubyB3aWZp
IGF0IGFsbAo+PiB3aXRoIHRoaXMgcGF0Y2guIFRoaXMgZmFsbGJhY2sgdG8gSVNPIENDIHNlYW1z
IHRvIHdvcmsgd2l0aCBuZXdlcgo+PiAoU3luYXB0aWNzPykgZGV2aWNlcyBvbmx5Lgo+IEkgZG8g
bm90IG1pbmQgeW91IHNlbmQgYSByZXZlcnRpbmcgaWYgeW91IGhhdmUgcHJvYmxlbSB0byBhZGQg
YSBwcm9wZXIKPiB0cmFuc2xhdGlvbiB0YWJsZSBmb3IgeW91ciBkZXZpY2UuICBCdXQgdGhhdCB3
b3VsZCBtZWFuIEkgaGF2ZSB0byBhZGQKPiBhIHByZXR0eSAibWVhbmluZ2xlc3MiIHRyYW5zbGF0
aW9uIHRhYmxlIGZvciBteSBkZXZpY2VzIDooCj4KSXMgdGhpcyBub3QgdGhlIHVzdWFsIERUIHBv
bGljeSwgdGhhdCBtaXNzaW5nIG9wdGlvbmFsIHByb3BlcnRpZXMgc2hvdWxkCm5vdCBwcmV2ZW50
IGEgZGV2aWNlIHRvIHdvcmssIHRoYXQgb2xkIGR0YnMgc2hvdWxkIHN0aWxsIHdvcmsgd2hlbiBu
ZXcKcHJvcGVydGllcyBhcmUgYWRkZWQ/CgpJJ20gbm90IHN1cmUgd2hhdCdzIHRoZSBiZXN0IHdh
eSBmb3J3YXJkLiBBIHBsYWluIHJldmVydCBvZiB0aGlzIHBhdGNoCndvdWxkIGF0IGxlYXN0IGJy
aW5nIGJhY2sgd2lmaSBzdXBwb3J0IGZvciBSb2NrUHJvNjQgZGV2aWNlcyB3aXRoCmV4aXN0aW5n
IGR0YnMuIE1heWJlIHNvbWVvbmUgZWxzZSBoYXMgYSBiZXR0ZXIgcHJvcG9zYWwgaG93IHRvIHBy
b2NlZWQuCgpSZWdhcmRzLApTb2VyZW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
