Return-Path: <SRS0=zMH+=N5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85746C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Sep 2021 19:23:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 326A0610C8
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Sep 2021 19:23:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 326A0610C8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=web.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1YWBvzzlEBw4NWAJLFL+ICnkbQZaOvP3cbAjLdVU0qg=; b=AGAJkX2e8lZJnKheAS96i539V1
	n5ryWa8MeOsXyUSAKBGjKDcb7Z2GC5Pw3o5hdSGXiHMHClWk+nDuW934sbJRunUKeyD1LtZy4SIyN
	wjj2guaWjjs+gQaJoy5jiuqVi4F0Hm4uUD/Nil+eL5AkPU7D2AFqAfU1zInl1zzImCB1Pwt7lUqeB
	p3iqDvwBlU4B5cXUMNcCjO17qBJQ/W49QQVIqN2ubHyE1v6EcREQDUMwJkJer7Yn455POh2L3sGc2
	T3mFAfOt8ZvAGLVTOv5jLZyIT1ZGOMxZn8x8BdEzSUi0yDiqVtfVdCxhzM/m9vuQ4Hb+Mz0tXdKJV
	zptjCz5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNggt-004YRQ-9V; Tue, 07 Sep 2021 19:23:31 +0000
Received: from mout.web.de ([212.227.15.3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNggf-004YOq-Nk; Tue, 07 Sep 2021 19:23:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1631042581;
 bh=C3Kava3hgepg/XaIDROu8dHiXBxSSlrzwnw2BXTTxu8=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=F34+gslEYeoBXcN3bghzku+i7clvDzh2RBQ/M9jbz3bg03teZgpsI4NW81YdcuyJq
 x4PhmsRc9ZlbTjbgWwetsSS8H67vwHi4EXSBk8FFm1x5IxabxDT49WtY+jtxR+bha6
 A7n6Kkda9oCzBMhyGdsAJgV7wu5onSx+PNC5xqpc=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.27] ([89.12.22.161]) by smtp.web.de (mrweb004
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MLUDi-1mN8ic3ogc-000aA6; Tue, 07
 Sep 2021 21:23:01 +0200
Subject: [BUG] Re: [PATCH] brcmfmac: use ISO3166 country code and 0 rev as
 fallback
To: Shawn Guo <shawn.guo@linaro.org>, Kalle Valo <kvalo@codeaurora.org>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Arend van Spriel <aspriel@gmail.com>, Franky Lin <franky.lin@broadcom.com>,
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
From: Soeren Moch <smoch@web.de>
Message-ID: <cb7ac252-3356-8ef7-fcf9-eb017f5f161f@web.de>
Date: Tue, 7 Sep 2021 21:22:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210425110200.3050-1-shawn.guo@linaro.org>
Content-Language: en-GB
X-Provags-ID: V03:K1:slohztXf3BTkkoBYuYLA1V9JVQKp3w602USBrAoPIC4BUO/YYP+
 hWpggc/Wu4nzDjc19d/6TODSknsPsfXprnkl0AzalPdCdzyTA7uIXePKNmM7F8GcqwPxNEK
 cfAr9EY79iuOr1onVlEU5TWlPVawIrX1VV9fBBw3tjBZXMm8SacELYdtKlxbq5GXpfss8Q8
 KE924fHKVxJVVFjoHrwng==
X-UI-Out-Filterresults: notjunk:1;V03:K0:ExnSiwBjD2s=:IA5XJh8uKbl+uI+OZe3887
 DbkIFzvC2TdLGsbchBIXFrCH4Oaz6fvoE8KuiltMJ/vVCXrxDo3qzWRab41lOIqwH4lNJN289
 q+gnRP+OcQPOAj6A6IYwGBxzomSK2vvnP53zlNMq60Nf3OEmKfYR2F0XU6sM6/7DIC0YBbLyV
 MX5QFbLCyDudiLvss8fGCQD32CXo8e4nYfx1JBumTV/w/X77mfbY6UyebZYNi21m08QE64l3U
 VTdgBtblvLXtu4TWaZqj6Y/q4LZXbpPUgphps4vK/BEMjrS4LW+anUKD29c0yS8NC3AHHm3KR
 xzTHFGU/Q4VvyKRKaONJffM3AxNmFjBoUH5v2apmiwjF7iXDm5ypXC/Rn2onUU8rXAEkwVrbT
 Fbm/Ex9TppX/xuEMOb9VFYOIqMTJ8QcRvoGjWq0/dsWFxgcdasmTX73ucPPiZ2Vsy8y1iCS0Z
 1fll7/6xnuYB4FKgGBhSMK+XcnVWrNcaN4pROPoA7HGlQwnCPTKzWpkNtKs+/FtdY8rjGWvTG
 avYXyV269I85+BT2ZyM33gQBOw25Syf0G/bAyj+z2hawZjQvWG+fQ6Lc3xl0ZStjE5hgLiQHa
 qM8hElmc+rcefhEiYv9JQTyF9jgSNYfxa05pWhDX0qc03YCm8td/EbgiUwrB7MAc2/RdPq/on
 9F7zWNixLWmoXLusSuGUNzIbNKoPxRzbOKVOQ+IVgEPq9aqofQ2+EGn9e71hwg9/zFqXdTaod
 JOg7s/YiRKOh2BxzY/F8dTRk3JeKyju1gHBPgd3BIPJ4huuC4y6xM+BNjPRpzBnIn3+Pee1Wa
 YzNxaz0TH+L7VUl1DUVQtcdbtJahFyA4c3778PlMNy/ktkM/NRHs2KWfAYz+sOflJkOMGuuQa
 iQxZHFVdN5nzTqQfLE27ES4cLDV/d0soNsopLAYSqlyeuvtrqm3YMdp8cbKjhYykbzOk0XCkP
 yvjHyS9n0YDH0FBMHDB6zA5eLh1UGRf0qxGZZvg9SioQuXGO6sFrEd2sa9wcspeUIsN6aUYNC
 tIEevqAgNLcN6oyVuRMhy07phv5JAfz3fp4ZUQ9EpGLd8DiKlGO0z20IhizluBxMhJmAPFR62
 fqYJnRwJCy6P4Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_122318_159392_296FFBCF 
X-CRM114-Status: GOOD (  20.23  )
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

T24gMjUuMDQuMjEgMTM6MDIsIFNoYXduIEd1byB3cm90ZToKPiBJbnN0ZWFkIG9mIGFib3J0aW5n
IGNvdW50cnkgY29kZSBzZXR1cCBpbiBmaXJtd2FyZSwgdXNlIElTTzMxNjYgY291bnRyeQo+IGNv
ZGUgYW5kIDAgcmV2IGFzIGZhbGxiYWNrLCB3aGVuIGNvdW50cnlfY29kZXMgbWFwcGluZyB0YWJs
ZSBpcyBub3QKPiBjb25maWd1cmVkLiAgVGhpcyBmYWxsYmFjayBzYXZlcyB0aGUgY291bnRyeV9j
b2RlcyB0YWJsZSBzZXR1cCBmb3IgcmVjZW50Cj4gYnJjbWZtYWMgY2hpcHNldHMvZmlybXdhcmVz
LCB3aGljaCBqdXN0IHVzZSBJU08zMTY2IGNvZGUgYW5kIHJlcXVpcmUgbm8KPiByZXZpc2lvbiBu
dW1iZXIuClRoaXMgcGF0Y2ggYnJlYWtzIHdpcmVsZXNzIHN1cHBvcnQgb24gUm9ja1BybzY0LiBB
dCBsZWFzdCB0aGUgYWNjZXNzCnBvaW50IGlzIG5vdCB1c2FibGUsIHN0YXRpb24gbW9kZSBub3Qg
dGVzdGVkLgoKYnJjbWZtYWM6IGJyY21mX2NfcHJlaW5pdF9kY21kczogRmlybXdhcmU6IEJDTTQz
NTkvOSB3bDA6IE1hcsKgIDYgMjAxNwoxMDoxNjowNiB2ZXJzaW9uIDkuODcuNTEuNyAocjY4NjMx
MikgRldJRCAwMS00ZGNjNzVkOQoKUmV2ZXJ0aW5nIHRoaXMgcGF0Y2ggbWFrZXMgdGhlIGFjY2Vz
cyBwb2ludCBzaG93IHVwIGFnYWluIHdpdGggbGludXgtNS4xNCAuCgpSZWdhcmRzLApTb2VyZW4K
PiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBHdW8gPHNoYXduLmd1b0BsaW5hcm8ub3JnPgo+IC0tLQo+
ICAuLi4vYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL2NmZzgwMjExLmMgICAgICB8IDE3ICsr
KysrKysrKysrLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29t
L2JyY204MDIxMS9icmNtZm1hYy9jZmc4MDIxMS5jIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJv
YWRjb20vYnJjbTgwMjExL2JyY21mbWFjL2NmZzgwMjExLmMKPiBpbmRleCBmNDQwNWQ3ODYxYjYu
LjZjYjA5YzdjMzdiNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNv
bS9icmNtODAyMTEvYnJjbWZtYWMvY2ZnODAyMTEuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L3dpcmVs
ZXNzL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9jZmc4MDIxMS5jCj4gQEAgLTc0NDIsMTgg
Kzc0NDIsMjMgQEAgc3RhdGljIHMzMiBicmNtZl90cmFuc2xhdGVfY291bnRyeV9jb2RlKHN0cnVj
dCBicmNtZl9wdWIgKmRydnIsIGNoYXIgYWxwaGEyWzJdLAo+ICAJczMyIGZvdW5kX2luZGV4Owo+
ICAJaW50IGk7Cj4KPiAtCWNvdW50cnlfY29kZXMgPSBkcnZyLT5zZXR0aW5ncy0+Y291bnRyeV9j
b2RlczsKPiAtCWlmICghY291bnRyeV9jb2Rlcykgewo+IC0JCWJyY21mX2RiZyhUUkFDRSwgIk5v
IGNvdW50cnkgY29kZXMgY29uZmlndXJlZCBmb3IgZGV2aWNlXG4iKTsKPiAtCQlyZXR1cm4gLUVJ
TlZBTDsKPiAtCX0KPiAtCj4gIAlpZiAoKGFscGhhMlswXSA9PSBjY3JlcS0+Y291bnRyeV9hYmJy
ZXZbMF0pICYmCj4gIAkgICAgKGFscGhhMlsxXSA9PSBjY3JlcS0+Y291bnRyeV9hYmJyZXZbMV0p
KSB7Cj4gIAkJYnJjbWZfZGJnKFRSQUNFLCAiQ291bnRyeSBjb2RlIGFscmVhZHkgc2V0XG4iKTsK
PiAgCQlyZXR1cm4gLUVBR0FJTjsKPiAgCX0KPgo+ICsJY291bnRyeV9jb2RlcyA9IGRydnItPnNl
dHRpbmdzLT5jb3VudHJ5X2NvZGVzOwo+ICsJaWYgKCFjb3VudHJ5X2NvZGVzKSB7Cj4gKwkJYnJj
bWZfZGJnKFRSQUNFLCAiTm8gY291bnRyeSBjb2RlcyBjb25maWd1cmVkIGZvciBkZXZpY2UsIHVz
aW5nIElTTzMxNjYgY29kZSBhbmQgMCByZXZcbiIpOwo+ICsJCW1lbXNldChjY3JlcSwgMCwgc2l6
ZW9mKCpjY3JlcSkpOwo+ICsJCWNjcmVxLT5jb3VudHJ5X2FiYnJldlswXSA9IGFscGhhMlswXTsK
PiArCQljY3JlcS0+Y291bnRyeV9hYmJyZXZbMV0gPSBhbHBoYTJbMV07Cj4gKwkJY2NyZXEtPmNj
b2RlWzBdID0gYWxwaGEyWzBdOwo+ICsJCWNjcmVxLT5jY29kZVsxXSA9IGFscGhhMlsxXTsKPiAr
CQlyZXR1cm4gMDsKPiArCX0KPiArCj4gIAlmb3VuZF9pbmRleCA9IC0xOwo+ICAJZm9yIChpID0g
MDsgaSA8IGNvdW50cnlfY29kZXMtPnRhYmxlX3NpemU7IGkrKykgewo+ICAJCWNjID0gJmNvdW50
cnlfY29kZXMtPnRhYmxlW2ldOwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
