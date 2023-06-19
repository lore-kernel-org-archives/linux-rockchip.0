Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75693EB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jun 2023 14:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qg9jErm1MuEFTNV7bNL0YYj5/alpM1CxeMDmVXIKbHg=; b=H41MaCtwqidee2
	aweM6grJ4IjCg72hnta/Ap3yyeHHKQErPZw1Lqf23imebE3rTHDZQc3zfeKjbWdnQqGk9xN64PPHx
	SbsAn3ZJnINjD84WpkhWLcHSqLnc1Xlxah5rFQTZ6P7SLZkB3LdMH6eQt03nytmhPEtLvHLZLGQ+/
	3Y+rYTMI8OkUDxI89MGjJxZOfi9SA0ifTYdt3p94DyPZGSTg9a13x+BjDm/n4F2bo4klRuhPPGkcE
	vL2u6zroj392IBXg2khdDeoOD5Omj/ac80WH/GNMMe+ZgJBnQpcIlQEFHDes/YCYwMDrCFkDCRpOZ
	K+fcdxmPjJlgK8j4bVMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBGCq-008gV7-39;
	Mon, 19 Jun 2023 14:50:12 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBGCn-008gTh-0H
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Jun 2023 14:50:10 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailout.nyi.internal (Postfix) with ESMTP id ADE525C02DC;
	Mon, 19 Jun 2023 10:50:04 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
  by compute6.internal (MEProxy); Mon, 19 Jun 2023 10:50:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1687186204; x=1687272604; bh=Ox0mGgHLkp5N/Da4WUkUcZFzC5y5KCU3DdU
	4cU5s0Zw=; b=uBukndHQGWLUkt5Elnl5NgRUP7VADlbyByjzxpYFPTCu6ZQkXkW
	EuO6nRksRTSITxAS041IgShdDE/C8nTnzCS7s+KZ4sgX6fv6hI2se4CxS3f76Cel
	P4ZqwZ2nOukWFZcSdwaDdraA+vnJ1lG0EYHRF7+UXlzs90o5yeMkfrs7nMAAZEK3
	X3Pd/FoSMQ/gIs5V+CHZCfBNZdcNzQ5SwsRMhOJ9/JciE/N6W9hfB33m7yfbtupm
	9H+jHbnWngZ6Rn/8sSIBLubLAbe59dNfS4uFYJ2GJnNy68mS1j7tEA7MtrS6Equz
	x1kQ67rUB17ZXrv0EkRvrnlrLXmZMNDbu8g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1687186204; x=1687272604; bh=Ox0mGgHLkp5N/Da4WUkUcZFzC5y5KCU3DdU
	4cU5s0Zw=; b=BlQIjlC4NmqbmqO/N50HX0TO6aj3XPhHGD7M9YlMcqHrSp+rasA
	HsYFM3OHe592/b0g5KK9mszRBYFpelGzdavoUPRhfMLRRbYFj0QEc2vqC/OAicj6
	k+vRxIuu6wlDRpXXi3opAdHsWh3CGny8wP/7moaXopic9tdQhKXtAmHJ8vVVZTAf
	VZ6Z8ss9uvYbSipcfWyx/j2V51PwTCM7ilQUkrjJnZKfqY6v3uR2+u1GwOTrlkOL
	FY5YX1ZFR0waug0Knym4rss67fjXHFFdn4ZAWHOpAb49Xxx//wdmeRtVp7BLueus
	64bMxkkTpglzcGdQP7EnXj0ahq7qRiH8lMQ==
X-ME-Sender: <xms:HGuQZFgGOAhuUZ4CKNgTny7qdd2QSQY5T65AhPpH_OtUQoQf8pAoZA>
    <xme:HGuQZKDfo0bl_ti3SX1Ai2pN33AvW9DTfaSARGUffcyYwD9W0XrPgKHZcI5YVdsww
    zsvn2-YHI0G60mzM3M>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrgeefvddgjeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtgfesthhqredtreerjeenucfhrhhomhepfdet
    rhhnugcuuegvrhhgmhgrnhhnfdcuoegrrhhnugesrghrnhgusgdruggvqeenucggtffrrg
    htthgvrhhnpeegfeejhedvledvffeijeeijeeivddvhfeliedvleevheejleetgedukedt
    gfejveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grrhhnugesrghrnhgusgdruggv
X-ME-Proxy: <xmx:HGuQZFFPkC1g4AxtOWHiKVCoutxonI8fb5p5FMcCuCJi2eDvuqzzQg>
    <xmx:HGuQZKT3Q682uKecNV6ASB1RYXERLp9xPObFiBF6sbUTsV5BosHdaw>
    <xmx:HGuQZCyN4W8k3O2ouLqLZXxIUD5jo4CMTfcEv7HaYaUskz9b1zX9lg>
    <xmx:HGuQZBmupTpROysgmBoVV2vahoAhxBiXsQC9ASt9WJXsIqsz_4HAgw>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 1B2F9B60086; Mon, 19 Jun 2023 10:50:03 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-496-g8c46984af0-fm-20230615.001-g8c46984a
Mime-Version: 1.0
Message-Id: <063a8886-fd31-425f-901c-fc830512eca3@app.fastmail.com>
In-Reply-To: <e264ac3a15e0f115aa7e941a77eb312429b8f65e.camel@collabora.com>
References: <20230616144854.3818934-1-arnd@kernel.org>
 <20230616144854.3818934-2-arnd@kernel.org>
 <e264ac3a15e0f115aa7e941a77eb312429b8f65e.camel@collabora.com>
Date: Mon, 19 Jun 2023 16:49:41 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Nicolas Dufresne" <nicolas.dufresne@collabora.com>,
 "Arnd Bergmann" <arnd@kernel.org>,
 "Ezequiel Garcia" <ezequiel@vanguardiasur.com.ar>,
 "Philipp Zabel" <p.zabel@pengutronix.de>,
 "Mauro Carvalho Chehab" <mchehab@kernel.org>
Cc: "Hans Verkuil" <hverkuil-cisco@xs4all.nl>,
 "Benjamin Gaignard" <benjamin.gaignard@collabora.com>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] media: verisilicon: change confusingly named relaxed register
 access
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_075009_601327_EC3F46E6 
X-CRM114-Status: GOOD (  15.85  )
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

T24gTW9uLCBKdW4gMTksIDIwMjMsIGF0IDE2OjQxLCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOgo+
IExlIHZlbmRyZWRpIDE2IGp1aW4gMjAyMyDDoCAxNjo0OCArMDIwMCwgQXJuZCBCZXJnbWFubiBh
IMOpY3JpdMKgOgo+PiBGcm9tOiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgo+PiAKPj4g
VGhlIHJlZ2lzdGVyIGFic3RyYWN0aW9uIGhhcyB3cmFwcGVycyBhcm91bmQgYm90aCB0aGUgbm9y
bWFsIHdyaXRlbCgpCj4+IGFuZCBpdHMgd3JpdGVsX3JlbGF4ZWQoKSBjb3VudGVycGFydCwgYnV0
IHRoaXMgaGFzIGxlZCB0byBhIGxvdCBvZiB1c2Vycwo+PiBlbmRpbmcgdXAgd2l0aCB0aGUgcmVs
YXhlZCB2ZXJzaW9uLgo+PiAKPj4gVGhlcmUgaXMgc29tZXRpbWVzIGEgbmVlZCB0byBpbnRlbnRp
b25hbGx5IHBpY2sgdGhlIHJlbGF4ZWQgYWNjZXNzb3IgZm9yCj4+IHBlcmZvcm1hbmNlIGNyaXRp
Y2FsIGZ1bmN0aW9ucywgYnV0IEkgbm90aWNlZCB0aGF0IGVhY2ggaGFudHJvX3JlZ193cml0ZSgp
Cj4+IGNhbGwgYWxzbyBjb250YWlucyBhIG5vbi1yZWxheGVkIHJlYWRsKCksIHdoaWNoIGlzIHR5
cGljYWxseSBtdWNoIG1vcmUKPj4gZXhwZW5zaXZlIHRoYW4gYSB3cml0ZWwsIHNvIHRoZXJlIGlz
IGxpdHRsZSBiZW5lZml0IGhlcmUgYnV0IGFuIGFkZGVkCj4+IHJpc2sgb2YgbWlzc2luZyBhIHNl
cmlhbGl6YXRpb24gYWdhaW5zdCBETUEuCj4+IAo+PiBUbyBtYWtlIHRoaXMgYmVoYXZlIGxpa2Ug
b3RoZXIgaW50ZXJmYWNlcywgdXNlIHRoZSBub3JtYWwgYWNjZXNzb3IgYnkKPj4gZGVmYXVsdCBh
bmQgb25seSBwcm92aWRlIHRoZSByZWxheGVkIHZlcnNpb24gYXMgYW4gYWx0ZXJuYXRpdmUgZm9y
Cj4+IHBlcmZvcm1hbmNlIGNyaXRpY2FsIGNvZGUuIGhhbnRyb19wb3N0cHJvYy5jIGlzIHRoZSBv
bmx5IHBsYWNlIHRoYXQKPj4gdXNlZCBib3RoIHRoZSByZWxheGVkIGFuZCBub3JtYWwgd3JpdGVs
LCBidXQgdGhpcyBkb2VzIG5vdCBzZWVtCj4+IGNyaWNpdGFsIGVpdGhlciwgc28gY2hhbmdlIGl0
IGFsbCB0byB0aGUgbm9ybWFsIG9uZXMuCj4KPiBJbiB0aGlzIHRleHQgeW91IHNwb2tlIGFib3V0
IHBvdGVudGlhbCBwZXJmb3JtYW5jZSBzaWRlIGVmZmVjdHMgb2YgZXhpc3RpbmcgY29kZQo+IGFu
ZCB5b3VyIGNoYW5nZXMsIGJ1dCBpdHMgbGVmdCBhbGwgdmVyeSB2YWd1ZSBhbmQgdGhlb3JldGlj
YWwuIEhhdmUgeW91IGRvbmUgYW55Cj4gbWVhc3VyZW1lbnQgPyBEbyB5b3UgbmVlZCBoZWxwIHdp
dGggdGhlIG1hbm5lciA/CgpJIGRvbid0IGhhdmUgdGhpcyBoYXJkd2FyZSBhbmQgaGF2ZSBub3Qg
ZG9uZSBhbnkgbWVhc3VyZW1lbnRzLgpPYnZpb3VzbHkgdGhlIG9ubHkgcG9pbnQgb2YgdXNpbmcg
cmVsYXhlZCBhY2Nlc3NvcnMgaXMgdG8KaW1wcm92ZSBwZXJmb3JtYW5jZSBpbiBjcml0aWNhbCBj
b2RlIHBhdGhzLCBidXQgZnJvbSB0aGUgd2F5IHRoZXkKYXJlIHVzZWQgaGVyZSBpdCBzZWVtcyB0
aGF0IHRoaXMgd2FzIGluc3RlYWQganVzdCBhbiBhY2NpZGVudAphbmQgbm9ib2R5IGVsc2UgZGlk
IGFueSBjb21wYXJpc29ucyBlaXRoZXIuCgpNeSBndWVzcyB3b3VsZCBiZSB0aGF0IGlmIG9uZSB3
YW50ZWQgdG8gc3BlZWQgdXAgdGhlIHJlZ2lzdGVyCmFjY2VzcywgYSBiZXR0ZXIgd2F5IHdvdWxk
IGJlIHRvIHVzZSBhIHJlZ21hcCBjYWNoZSB0byBhdm9pZApyZWFkaW5nIHJlZ2lzdGVycyB3aGVu
IHRoZSBjb250ZW50cyBhcmUgYWxyZWFkeSBrbm93bi4KCiAgICAgQXJuZAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
