Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD8AACCFA1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 01:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=te10ab8k5nRN2KQGe9936nSyYR1g8vpiFum7+UzMdGs=; b=TJwf4VEFdTMXlE
	5pDgC5K+R6phwD4pv0GdSXdkGRD7mLaAtRBSnGdCZiWjS2h30QsYgjStkoFUTOhUYq7+z4Ce37GLu
	Xu9wVtnSYDfL1NEzt2okKfqZN1T0NAnaJM0Pjxti0L+sWHCPBzh67M0vEf6osSNVkfguv/iyStC1o
	ZDWnzfVXAOBcuhAUp6cUtmNKqs+L0qAPsdQ5onGtCWliTN4dXP2ClODsjOVKNF6fdn4CLMGVcvZsH
	//w8+wNN9PofFK0DgHv5ZHu8bXSA1JlfM33xsR6erTiaYu8hsvJctaQhtBH38GE+sDZKVEiJz3+kJ
	7QUkCm1JMoczxdfJvc4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIzRT-00000007wzH-02EE;
	Wed, 12 Nov 2025 01:14:35 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIzRQ-00000007wyh-43D1
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Nov 2025 01:14:34 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id C0B49404BC;
	Wed, 12 Nov 2025 02:14:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762910070; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=LkNSm3s8qehzOqVXqiOqufYdiufr+1VbrUeNOyfOu8M=;
	b=H6tIb7mrOKlE15NonKcJaWIOvWNw9vGnOHBQAV4gQ21ejAbRDoKusPPBdtO5WQVrBeGNzN
	13tpGXu1rdcfgZW6dUNwDND1FnwhUcuiCJz8QmaYqzEPhQCimTEQcA6ATDJGf79UGjNWpx
	diC72T2Y+yljgTo6AN39qkL40jx4Wu3BEU4CarmwaX+tVgX1ANB8KfLB2iCZUAt1TeAnsG
	jfFj8AD+yCDFuZTtbVoHOL9fojYtrgQSsfqycOrW41R5m8QaOiCvSKHRQ9W0acSnCiUJkI
	7kz+znuTt/87UE2zbF+3zxR+idwXgmFOl0iEs9Uryq17Gzaqa0pbX3In3gmIrg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <EB08CB02156A172D+abf42f17-09e1-40ea-9369-eca481d230a6@radxa.com>
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
 <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
 <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org>
 <2892FE50237CD58E+0f15924c-a915-4446-954c-d81a782d23e9@radxa.com>
 <19ce0a41-563c-6202-6b94-b2c644a0b827@manjaro.org> <EB08CB02156A172D+abf42f17-09e1-40ea-9369-eca481d230a6@radxa.com>
Date: Wed, 12 Nov 2025 02:14:26 +0100
Cc: "Joseph Kogut" <joseph.kogut@gmail.com>, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, honyuenkwun@gmail.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <a2581eae-e8bd-c404-5d4a-a50fddfb5d6a@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 0/3] Add Radxa CM5 and IO Board
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_171433_217377_467ABE95 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wednesday, November 12, 2025 02:01 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
> On 11/12/25 09:46, Dragan Simic wrote:
> > By the way, what you called changelogs in the examples above is
> > usually called patch descriptions.  When they become merged, they
> > become called commit descriptions or, sometimes, commit messages.
> > Using the standard lingo usually helps. :)
> 
> Ah, it comes from
>   https://www.kernel.org/doc/html/latest/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by
> 
> Should it be fixed? ;)

Ah, I see, thanks.  IMHO, the wording in that document should be
adjusted a bit, but I don't have the time and energy required to
actually do that. :)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
