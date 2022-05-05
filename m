Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33FA5C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 May 2022 10:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBTN6mVQxlJ8q4pUcs8VxuxyCEEDwNOhuInIjaJw884=; b=z3q/hd7LhLgj9i
	3oq66ZCfCIzruFO2cIgbVz9UiYuG5uHl5RRIm0HkPICBOtyoh5cdUQlH3N80v89POFoO86o6q0Cm9
	goVq27g4UNOdQ9MdgsmhDN9NQCfqIXefTIVK71ct9gLRN1v1QMtn6jeJcwX5fBU1lSLDxiHpLwFu1
	4ZckoNF7XsbJH21FMhSdLq4vQ7UZ/eimi2eKC34O2O59LuFMnONHzonej1CnxQcj8q8L+Mt91SMuc
	Jx+fr5jYqBQJNs88L9gGuHZ3BdUWsliRjucemGv1IesAnzqUwKeI5/XycrlkZFPPrsNpGxFDCUpcN
	WNX54wYqieyMuQZK8tIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmYRg-00FBx7-Rr; Thu, 05 May 2022 10:10:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmYRV-00FBux-PY; Thu, 05 May 2022 10:10:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B8FDF106F;
 Thu,  5 May 2022 03:10:36 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3F5F73FA27;
 Thu,  5 May 2022 03:10:35 -0700 (PDT)
Date: Thu, 5 May 2022 11:10:32 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Cristian Marussi <cristian.marussi@arm.com>,
 Etienne Carriere <etienne.carriere@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, Liang Chen <cl@rock-chips.com>,
 linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [BUG] New arm scmi check in linux-next causing rk3568 not to
 boot due to firmware bug
Message-ID: <20220505101032.icqb2hau4dhj3afr@bogus>
References: <1698297.NAKyZzlH2u@archbook>
 <20220504132130.wmmmge6qjc675jw6@bogus>
 <3764923.NsmnsBrXv5@archbook> <YnOEwuuyO2/h7c1G@e120937-lin>
 <CAN5uoS_MgBiTVZCRSZyYCH4cnUZD_bHj2+mZu661bFV8TKWScw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAN5uoS_MgBiTVZCRSZyYCH4cnUZD_bHj2+mZu661bFV8TKWScw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_031041_912643_20DECBE0 
X-CRM114-Status: GOOD (  15.25  )
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

> > > > On Wed, May 04, 2022 at 02:49:07PM +0200, Nicolas Frattaroli wrote:
> > > > > Good day,
> > > > >
> > > > > a user on the #linux-rockchip channel on the Libera.chat IRC network
> > > > > reported that their RK3568 was no longer getting a CPU and GPU clock
> > > > > from scmi and consequently not booting when using linux-next. This
> > > > > was bisected down to the following commit:

OK I missed to read the above properly earlier. If scmi probe failure is
resulting in Linux boot failure, then that is another bug that needs fixing.
Why does not getting CPU clock block the boot. I would like to see the boot
logs. I considered this issue to be non-fatal and must be just ending up
disabling all SCMI communication. But the reported issue is boot failure
which sounds like another/different bug and I would like that to be fixed
first before we push the workaround for the reported issue so that it is
not ignored.

Has anyone analysed why the absence of CPU clock results in boot failure ?
Are you running the upstream kernel itself ?

-- 
Regards,
Sudeep

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
