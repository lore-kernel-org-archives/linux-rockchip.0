Return-Path: <SRS0=Zsw1=PI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EC8DC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 06:46:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AC97361038
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 06:46:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AC97361038
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PM2ezxKrBMJ8y0Hm5wu+Ovzc/9BKm1/EDrH5mQB/jE0=; b=c7JpEA7+AyLWpxiQBAFX6YI0FP
	PNDmbze462hetxyi73tvXzzTB0oKfoZxydZwlXxp0hD/EqfyGheFAzpE6y/kmvLwPwnfVPgoGEhef
	Aa3Y6/Awqe4475/vbcIv2Zop29WaruphuGGxU4lC0cCEvVKe0EhLEebhgDrZnLnM2l8brebtumG4G
	f5RHudIXr6isyFj4SvtWRTz9TiUUIK9EaNBhYxqrBEhkFUM9biKPKZQ2MUGDR89pKNF9/77B8008o
	26npepgGORJqYFtvgnPWfGO75pDtMOi+aST3n8SDJ0bwe12CfvLOK3WwoqDASPCr6V2tJ/ooOB0Cc
	QYv2fEKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1md5N8-003UhO-HQ; Wed, 20 Oct 2021 06:46:46 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1md5Mw-003UgE-3N; Wed, 20 Oct 2021 06:46:36 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id B56B9842;
 Wed, 20 Oct 2021 14:46:25 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.22] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P16835T140562797250304S1634712383778350_; 
 Wed, 20 Oct 2021 14:46:24 +0800 (CST)
X-IP-DOMAINF: 1
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: jay.xu@rock-chips.com
X-RCPT-COUNT: 11
X-LOCAL-RCPT-COUNT: 1
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-UNIQUE-TAG: <0e98d8f1b9ab8a8b4cd160bf98629cb4>
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH=5d_ASoC=3a_rockchip=3a_use_generic_DMA_eng?=
 =?UTF-8?B?aW5lIGNvbmZpZ3VyYXRpb27jgJDor7fms6jmhI/vvIzpgq7ku7bnlLFsaW51eC1y?=
 =?UTF-8?Q?ockchip-bounces+sugar=2ezhang=3drock-chips=2ecom=40lists=2einfrad?=
 =?UTF-8?B?ZWFkLm9yZ+S7o+WPkeOAkQ==?=
To: Mark Brown <broonie@kernel.org>
Cc: John Keeping <john@metanate.com>, alsa-devel@alsa-project.org,
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jianqun Xu <jay.xu@rock-chips.com>
References: <20211018114844.1746351-1-john@metanate.com>
 <YW1svMVSgBJygfpV@sirena.org.uk>
 <a5eebd60-da6f-cc56-b1fe-221dc827e097@rock-chips.com>
 <YW63pduAGW01PUoj@sirena.org.uk>
From: sugar zhang <sugar.zhang@rock-chips.com>
Message-ID: <cdd530bd-9d85-8edf-2151-00502bbbb4cf@rock-chips.com>
Date: Wed, 20 Oct 2021 14:46:24 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YW63pduAGW01PUoj@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_234634_438350_AF07798C 
X-CRM114-Status: GOOD (  12.21  )
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

SGkgTWFyaywKCk9uIDIwMjEvMTAvMTkgMjA6MTgsIE1hcmsgQnJvd24gd3JvdGU6Cj4gT24gVHVl
LCBPY3QgMTksIDIwMjEgYXQgMTA6MTE6MjdBTSArMDgwMCwgc3VnYXIgemhhbmcgd3JvdGU6Cj4+
IEhpIE1hcmssIEpvaG4sCj4+Cj4+IEFjdHVhbGx5LCBJIGhhdmUgc3VibWl0IHBhdGNoWzFdIHRv
IGRvIHRoZSBzYW1lIHRoaW5nIGEgZmV3IHdlZWtzIGFnbywgYW5kCj4+IGV4cGxhaW4gdGhlIG9y
aWdpbmFsIHB1cnBvc2UuCj4+Cj4+IFsxXSBodHRwczovL3gtbG9yZS5rZXJuZWwub3JnL2xpbnV4
LXJvY2tjaGlwLzE2MzI3OTI5NTctODA0MjgtMS1naXQtc2VuZC1lbWFpbC1zdWdhci56aGFuZ0By
b2NrLWNoaXBzLmNvbS8KPiBQbGVhc2Ugc3VibWl0IHBhdGNoZXMgdXNpbmcgc3ViamVjdCBsaW5l
cyByZWZsZWN0aW5nIHRoZSBzdHlsZSBmb3IgdGhlCj4gc3Vic3lzdGVtLCB0aGlzIG1ha2VzIGl0
IGVhc2llciBmb3IgcGVvcGxlIHRvIGlkZW50aWZ5IHJlbGV2YW50IHBhdGNoZXMuCj4gTG9vayBh
dCB3aGF0IGV4aXN0aW5nIGNvbW1pdHMgaW4gdGhlIGFyZWEgeW91J3JlIGNoYW5naW5nIGFyZSBk
b2luZyBhbmQKPiBtYWtlIHN1cmUgeW91ciBzdWJqZWN0IGxpbmVzIHZpc3VhbGx5IHJlc2VtYmxl
IHdoYXQgdGhleSdyZSBkb2luZy4KPiBUaGVyZSdzIG5vIG5lZWQgdG8gcmVzdWJtaXQgdG8gZml4
IHRoaXMgYWxvbmUuCm9rLgo+IFBsZWFzZSBkb24ndCB0b3AgcG9zdCwgcmVwbHkgaW4gbGluZSB3
aXRoIG5lZWRlZCBjb250ZXh0LiAgVGhpcyBhbGxvd3MKPiByZWFkZXJzIHRvIHJlYWRpbHkgZm9s
bG93IHRoZSBmbG93IG9mIGNvbnZlcnNhdGlvbiBhbmQgdW5kZXJzdGFuZCB3aGF0Cj4geW91IGFy
ZSB0YWxraW5nIGFib3V0IGFuZCBhbHNvIGhlbHBzIGVuc3VyZSB0aGF0IGV2ZXJ5dGhpbmcgaW4g
dGhlCj4gZGlzY3Vzc2lvbiBpcyBiZWluZyBhZGRyZXNzZWQuCmdvdCBpdCwgdGhhbmtzLgoKLS0g
CkJlc3QgUmVnYXJkcyEK5byg5a2m5bm/L1N1Z2FyCueRnuiKr+W+rueUteWtkOiCoeS7veaciemZ
kOWFrOWPuApSb2NrY2hpcCBFbGVjdHJvbmljcyBDby4sIEx0ZC4KCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
