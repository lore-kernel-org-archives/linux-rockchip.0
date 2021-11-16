Return-Path: <SRS0=A1uQ=QD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB2EEC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Nov 2021 14:49:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AA1AA619E1
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Nov 2021 14:49:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AA1AA619E1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1xdZU/KsjN80dek8/YX9iEbOmWaGYUc7t5SVb9ufTCE=; b=mJOejKY+hf82gmlxMVpem23ZjE
	WqWmvz+tNT2lXRc9rlATz1i3JPzYzjFbeA/ECG/EIwcjDMD9sVGBfjvpoPs/AqkDdeF0CRYp5rnQF
	E+tW7VFpLLFAENi+UEaYp9oHiH2Z4vctH4CUCtDpMEo1aJSnJ6EKSMzXKavmlnmlCR7E6F1rFiJSQ
	CLoYD8AZNuloBfLMqbcx0wSyD6TN10IKB4Tk4urfoKWKw3dLkjiTtwi2/YqneWLMcjZG1bsuPNgfm
	LEZxBYU7TyQj+eNMAm71l6PK4NyK3vFTaevIrKZU6m0VThSe4nXsAdATzt4VMPONJV8Wp8tEC9WGC
	NMINX0cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmzm2-0020Eg-13; Tue, 16 Nov 2021 14:49:26 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmzlA-001ztB-3M; Tue, 16 Nov 2021 14:48:33 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 22B711F458BF
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
 t=1637074110; bh=tVtgLQiEOpDHHHaJ5ct0SkMzxnFgc5BlaoIWWXimpko=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=OggLjPtoRSPWS8ZLs8I799gkB90MsL/xFtgIKC8O+wdh/kgYzKP9odHJHnEbj1wPm
 GluregzK0LTcIzo2QE0TnM741ec+itkKBPSrloS2yGoZ/sw58LUk9uo29xnIcfiLf5
 CSfqHVVJfkq9sd0/Y69anMp33iJ1bVE10yloPxKjZF8BYWm377pN9QAemPR652FkJE
 fzMyYpzmN07MKwh0PhiC9XXC90rlpSXfI9dKJ9dSRkajkpd69HgZnh0M+3f1Hm0UlS
 IdvFNvu0tjB/wx3Q9j1InsK6ynl+f95QgVe3HutSuIVr2lDIp+1d3Xpd4s+7ZpbAbV
 4rouW9E311MIQ==
Subject: Re: [PATCH v8 00/12] VP9 codec V4L2 control interface
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: linux-media <linux-media@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Collabora Kernel ML <kernel@collabora.com>
References: <20211116143842.75896-1-andrzej.p@collabora.com>
 <CAAEAJfANEficRLg2JCvOmv_pv9j9tEVPPsph4n4TYkeBjeUWiQ@mail.gmail.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <7496c1ab-4ee1-c13b-e7d4-3c3d47022f26@collabora.com>
Date: Tue, 16 Nov 2021 15:48:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAAEAJfANEficRLg2JCvOmv_pv9j9tEVPPsph4n4TYkeBjeUWiQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_064832_312028_8475C1DA 
X-CRM114-Status: GOOD (  20.48  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRXplcXVpZWwsCgpXIGRuaXUgMTYuMTEuMjAyMSBvwqAxNTo0NywgRXplcXVpZWwgR2FyY2lh
IHBpc3plOgo+IE9uIFR1ZSwgMTYgTm92IDIwMjEgYXQgMTE6MzgsIEFuZHJ6ZWogUGlldHJhc2ll
d2ljego+IDxhbmRyemVqLnBAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4+Cj4+IERlYXIgYWxsLAo+
Pgo+PiBUaGlzIHBhdGNoIHNlcmllcyBhZGRzIFZQOSBjb2RlYyBWNEwyIGNvbnRyb2wgaW50ZXJm
YWNlIGFuZCB0d28gZHJpdmVycwo+PiB1c2luZyB0aGUgbmV3IGNvbnRyb2xzLiBJdCBpcyBhIGZv
bGxvdy11cCBvZiBwcmV2aW91cyB2NyBzZXJpZXMgWzFdLgo+Pgo+PiBJbiB0aGlzIGl0ZXJhdGlv
biwgd2UndmUgaW1wbGVtZW50ZWQgVlA5IGhhcmR3YXJlIGRlY29kaW5nIG9uIHR3byBkZXZpY2Vz
Ogo+PiBSb2NrY2hpcCBWREVDIGFuZCBIYW50cm8gRzIsIGFuZCB0ZXN0ZWQgb24gUkszMzk5LCBp
Lk1YOE1RIGFuZCBpLk1YOE1QLgo+PiBUaGUgaS5NWDhNIGRyaXZlciBuZWVkcyBwcm9wZXIgcG93
ZXIgZG9tYWlucyBzdXBwb3J0LCB0aG91Z2gsIHdoaWNoIGlzIGEKPj4gc3ViamVjdCBvZiBhIGRp
ZmZlcmVudCBlZmZvcnQsIGJ1dCBpbiBhbGwgMyBjYXNlcyB3ZSB3ZXJlIGFibGUgdG8gcnVuIHRo
ZQo+PiBkcml2ZXJzLgo+Pgo+PiBHU3RyZWFtZXIgc3VwcG9ydCBpcyBhbHNvIGF2YWlsYWJsZSwg
dGhlIG5lZWRlZCBjaGFuZ2VzIGhhdmUgYmVlbiBzdWJtaXR0ZWQKPj4gYnkgRGFuaWVsIEFsbWVp
ZGEgWzJdLiBUaGlzIE1SIGlzIHJlYWR5IHRvIGJlIG1lcmdlZCwgYW5kIGp1c3QgbmVlZHMgdGhl
Cj4+IFZQOSBWNEwyIGNvbnRyb2xzIHRvIGJlIG1lcmdlZCBhbmQgcmVsZWFzZWQuCj4+Cj4+IEJv
dGggcmt2ZGVjIGFuZCBoYW50cm8gZHJpdmVycyBhcmUgcGFzc2luZyBhIHNpZ25pZmljYW50IG51
bWJlciBvZiBWUDkgdGVzdHMKPj4gdXNpbmcgRmx1c3RlclszXS4gVGhlcmUgYXJlIHN0aWxsIGEg
ZmV3IHRlc3RzIHRoYXQgYXJlIG5vdCBwYXNzaW5nLCBkdWUgdG8KPj4gZHluYW1pYyBmcmFtZSBy
ZXNpemUgKG5vdCB5ZXQgc3VwcG9ydGVkIGJ5IFY0TDIpIGFuZCBzbWFsbCBzaXplIHZpZGVvcwo+
PiAoZHVlIHRvIElQIGJsb2NrIGxpbWl0YXRpb25zKS4KPj4KPj4gVGhlIHNlcmllcyBhZGRzIHRo
ZSBWUDkgY29kZWMgVjRMMiBjb250cm9sIEFQSSBhcyB1QVBJLCBzbyBpdCBhaW1zIGF0IGJlaW5n
Cj4+IG1lcmdlZCB3aXRob3V0IHBhc3NpbmcgdGhyb3VnaCBzdGFnaW5nLCBhcyBhZ3JlZWRbNF0u
IFRoZSBBQkkgaGFzIGJlZW4gY2hlY2tlZAo+PiBmb3IgcGFkZGluZyBhbmQgdmVyaWZpZWQgdG8g
Y29udGFpbiBubyBob2xlcy4KPj4KPj4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmxpbnV4dHYub3Jn
L3Byb2plY3QvbGludXgtbWVkaWEvbGlzdC8/c2VyaWVzPTYzOTMKPj4gWzJdIGh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy9nc3RyZWFtZXIvZ3N0LXBsdWdpbnMtYmFkLy0vbWVyZ2VfcmVx
dWVzdHMvMjE0NAo+IAo+IER1ZSB0byBHU3RyZWFtZXIgbW9ub3JlcG8sIHRoZSBNUiBoYXMgYmVl
biBtb3ZlZCB0bwo+IAo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy8vZ3N0cmVhbWVy
L2dzdHJlYW1lci8tL21lcmdlX3JlcXVlc3RzLzEwMTIKPiAKClRoYW5rIHlvdSBmb3IgY2F0Y2hp
bmcgdGhpcyA6KQoKQW5kcnplagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
