Return-Path: <SRS0=zRVM=NS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B559DC432BE
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Aug 2021 01:37:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 43A0C60EE0
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Aug 2021 01:37:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 43A0C60EE0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4/99ms2Su6gvb6CGf7ZNBLO73K3avb3/raLFV4ye2H4=; b=kLlTUm60HPQcfXReo1wnL5eEw7
	TYaRDY4FVe1pnmkhCAgzTzn2zFwArfgQS1wsIeW5EcM2BeXgoAZjIdviYG40Qz6MctW5vVHM6HtM7
	x7qJkMIUmYDWDUOcA/++eydrSM8aIwHc6Ozh3Lc2OC9nni86/qykI/FYFLqbEkTE+m0TkvdukYtVi
	kwI05upGo664rFnwvFaNAYFkPUeOuZGl4UwZR63/zSp2mk2vEU6uq4ei5UHhtEXJav/suYFzbceXy
	89DtbzNdr0Ws8/dSILQ4iMnJ344LUqZuWqkBKW+rZuIzkfvlIxtdHPXjRPU1xw+NZwyT5Ch3VeLRg
	qGV2PoHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJQo9-00BKKX-O3; Fri, 27 Aug 2021 01:37:25 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJQo6-00BKKB-Po
 for linux-rockchip@lists.infradead.org; Fri, 27 Aug 2021 01:37:24 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 9816C1B5B;
 Fri, 27 Aug 2021 09:37:20 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.19] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P702T139881362753280S1630028240323457_; 
 Fri, 27 Aug 2021 09:37:20 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6dcc37658b0229364e9fc103e0cfe35f>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: alsa-devel@alsa-project.org
X-RCPT-COUNT: 5
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v3 05/14] ASoC: rockchip: i2s: Fix concurrency between
 tx/rx
To: Mark Brown <broonie@kernel.org>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, alsa-devel@alsa-project.org
References: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629950520-14190-5-git-send-email-sugar.zhang@rock-chips.com>
 <20210826125206.GD4148@sirena.org.uk>
From: sugar zhang <sugar.zhang@rock-chips.com>
Message-ID: <a6d7a5af-0efd-72db-b144-cf51cd0907a3@rock-chips.com>
Date: Fri, 27 Aug 2021 09:37:19 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210826125206.GD4148@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210826_183723_138154_E7972633 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
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

SGkgTWFyaywKCk9uIDIwMjEvOC8yNiAyMDo1MiwgTWFyayBCcm93biB3cm90ZToKPiBPbiBUaHUs
IEF1ZyAyNiwgMjAyMSBhdCAxMjowMTo1MVBNICswODAwLCBTdWdhciBaaGFuZyB3cm90ZToKPgo+
PiArLyogdHgvcnggY3RybCBsb2NrICovCj4+ICtzdGF0aWMgREVGSU5FX1NQSU5MT0NLKGxvY2sp
Owo+PiArCj4gV2h5IGlzIHRoaXMgYSBnbG9iYWwgYW5kIG5vdCBwYXJ0IG9mIHRoZSBkcml2ZXIg
ZGF0YT8gIEl0J3MgYWxzbyBub3QKPiBjbGVhciB0byBtZSB3aHkgdGhpcyBpcyBhIHNwaW5sb2Nr
IGFuZCBub3QgYSBtdXRleC4KClllcywgdGhpcyBzaG91bGQgYmUgbW92ZWQgaW50byBkcml2ZXIg
ZGF0YSwgd2lsbCBkbyBpbiB2NC4KCml0J3Mgbm90IGFsbG93ZWQgdG8gc2xlZXAgaW4gdGhpcyBj
b250ZXh0LCBzbyB1c2Ugc3BpbmxvY2sgaW5zdGVhZC4KCi0tIApCZXN0IFJlZ2FyZHMhCuW8oOWt
puW5vy9TdWdhcgrnkZ7oiq/lvq7nlLXlrZDogqHku73mnInpmZDlhazlj7gKUm9ja2NoaXAgRWxl
Y3Ryb25pY3MgQ28uLCBMdGQuCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
