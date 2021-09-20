Return-Path: <SRS0=3gvV=OK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B81AAC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Sep 2021 14:33:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7407C610A0
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Sep 2021 14:33:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7407C610A0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLVJ8ybIM+eDt4TSF2JeDXPrnPGTJ+RIQ6f8CTuT+Fg=; b=1rUqA/Vf87zSrp
	wojl4cLVkQ4VFRzbxF26OOaVEoCWrgXKkblahvywHTQdp+hpgkFnrNMhqbPxUGdGhOPDbUKKfdUmY
	DBk9KBugbuqw1GPNWWY/5f+m31a+BoKuVzJVhEHPfYgh7QWmG6rpYe6s/qHlCpKqNX6croXX4fV8u
	1uTqWjd6t4iQ+W1IhSGuenvZGoWn8cMOc9SVi/BQLsrx0uStaEDBUQ3BUeSvS9jcuU94p/kxLu+v4
	sGo0IK/4/KOZN0PDdy9cf6PQe9tvxcBdKhleyGilyQssA2o9qP9M0U4ZQt+E2tJ9iWxEZfvRyh0TV
	2wwFkpTnYJTvZQqFGd5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSKMU-001wzm-7N; Mon, 20 Sep 2021 14:33:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSKI1-001uk6-EP; Mon, 20 Sep 2021 14:29:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=NlQCZyIXbgjuKV+fG6mb2KjGQ3gRfo7JGL0SWvWaYUo=; b=YfikVbkBr+A2xio2/dB5OEggyF
 sE0LSGnf1+p/EYvAAYK2pVri1gMb47Zx2xXFpMhQ07KhFIfh0zHx8L476qMOpP1Fyvx+PcBXK7KFw
 xMgOIWYnTRj6DFKxGQITJhn96rupJfUfHIdZrpxcVtFf4V6BLIM0vhzKYdPjjKFHSOC+ZaXWaJao1
 926wQWX0akeFkDJ+AzckhU7+NLvWEJp1VrqcyARkhtsK3sxrQEkKGGfyTpQgVCLx7BuGJHhVOHuSd
 WB3gkaEHhaLyxqrfTbn0WzS/QJd0fQcGiwTN3R/cGJ1em926C+KVq/GtJ3OeUHYHRhBA0R2G72A9A
 vqNFMJPQ==;
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSKHw-004Won-L7; Mon, 20 Sep 2021 14:28:59 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mSKHr-0005O5-Id; Mon, 20 Sep 2021 16:28:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: swap timer clock-names
Date: Mon, 20 Sep 2021 16:28:44 +0200
Message-Id: <163214478704.1547258.15196055453839008962.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210828102659.7348-1-jbx6244@gmail.com>
References: <20210828102659.7348-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_152856_842929_5A96AA84 
X-CRM114-Status: GOOD (  10.60  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, 28 Aug 2021 12:26:59 +0200, Johan Jonker wrote:
> With the conversion of rockchip,rk-timer.yaml the clock-names order
> was set to "pclk", "timer", but nothing was fixed in the ARM dts section
> of the mainline kernel, so the swap timer clock-names that don't fit.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml

Applied, thanks!

[1/1] ARM: dts: rockchip: swap timer clock-names
      commit: 3e6f8124a78840d074fab36853ee1f5a2e7cffe5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
