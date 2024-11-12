Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 936B6D41D56
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 05:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzYigImA4ZXnBWoOxMNVay19+VywvnGMnuAYzVBl0jw=; b=JulpkwUvcY8n36
	ncQOSd/IOFglKKWIO++pa/ykJCmElPGV6STOaGoQssCzQYQ86v23BwqThvOw1z+6GkXpLeg3dBXr1
	x6wlIpyV5DovhZpS7xdDWQyIc6D/bfXet+dn2X7lqHEOMQslSqGkEZfZplQK9umQRRGwjk27KO2Yk
	Svt8o0xGwpMD+GzYIxUi3IHUe+WBtsE8hOGSR94G9B6Z9Y0LkQnOB3tL7V5hn5cLK8zmPbzdyg3fA
	U+ykWLOcENeD8JvxtY9tVwt9nHO8LiH6PgOj2kMvpb5APEFqB8RQkvflimxKfHouVgxDuzH+TW1U/
	TWn33THkBbDK6NIBTEUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAjjy-00000002Hh2-0Y1w;
	Tue, 12 Nov 2024 05:47:02 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAjju-00000002HgN-2T3C
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Nov 2024 05:47:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EB21D1477;
	Mon, 11 Nov 2024 21:47:23 -0800 (PST)
Received: from bogus (unknown [10.57.89.22])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E2FCD3F66E;
	Mon, 11 Nov 2024 21:46:42 -0800 (PST)
Date: Tue, 12 Nov 2024 05:46:23 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Sudeep Holla <sudeep.holla@arm.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: Q: Kconfig: 'If unsure, say N'
Message-ID: <20241112054623.7zxte2nny7h4st3h@bogus>
References: <D5GVI1Q30BTS.1ZVQ4YC4OJYEL@cknow.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D5GVI1Q30BTS.1ZVQ4YC4OJYEL@cknow.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_214658_696342_1FE23BCB 
X-CRM114-Status: GOOD (  23.23  )
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

On Fri, Nov 08, 2024 at 03:39:30PM +0100, Diederik de Haas wrote:
> Hi,
>
> In quite a number of Kconfig help text entries I see this:
> "If unsure, say N."
>
> But that raises the question: How can I be sure?
>
> To me, this comes across as that the person who implemented the feature
> recommends *against* using it, unless you think you know better then the
> person who implemented it. Which is quite a high bar.
>

If you don't know about the feature and it is not having any user-interface
why do you want to enable it. You must understand the feature to enable it
and use it IMO.

> IIRC I did come across an entry which paraphrased said:
> "This module can be useful in situation Y, but you run a real risk of
> physically damaging your board when you use it.
> So normally you REALLY should not enable this, but if you still need it
> then the functionality is implemented in this module.
>
> If unsure, say N."
>
> Which is an excellent reason not to enable it ;-)
> Moreover, it specifies when you can/should go against the advise and
> tells you what the risk is if you do.
>
> But the vast majority just says "If unsure, say N."
>
> The problem is that I'd need a better justification to enable (as 'y' or
> 'm') a module then "Based on (the rest of) the Help text, this looks
> really useful".
>

You seem to contradict yourself here. If you have understood the help
text and think it is useful, it seems to me as an indication that you
are not unsure really. So you can enable it if you want TBH.

> Not to discuss these specifically, but just for illustration:
> ``drivers/firmware/arm_scmi/transports/Kconfig`` has this
> option: ``ARM_SCMI_TRANSPORT_SMC_ATOMIC_ENABLE``
> which IIUC enables an *optional* feature for an atomic transaction.
>

"If you want the SCMI SMC based transport to operate in atomic
mode, avoiding any kind of sleeping behaviour for selected
transactions on the TX path, answer Y.

Enabling atomic mode operations allows any SCMI driver using this
transport to optionally ask for atomic SCMI transactions and operate
in atomic context too, at the price of using a number of busy-waiting
primitives all over instead."

So you read the above text, understood and find it useful. You must be
not unsure of this feature then, so what does that text bother you.
It is just a caution to users who are just build and not looked at the
code, or have no idea about the feature or doesn't understand the help
text.

--
Regards,
Sudeep

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
