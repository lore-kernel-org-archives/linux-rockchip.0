Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8614CEB2C1
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 07:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MwcVE6f7JHjP5Z6Aa/QmZcVMEdbOHKO+DfgHl8CCyEQ=; b=rRXdJxVTPPFcoX
	xfFOrLxaDFOQv/KNCOKmRw6oifJELO0lSXxPJToIvZBtIAXQnnDM+S/SLzHW6Ircl/I2rGTr/mRwb
	uJ3mYrrYDzPFsjZDMV0WRrp33CdsWPmoepa3f6Q6NhaDzy0KcO5IYkup6ryes6xShL7uFiDo1uMR5
	IB/vCCoB/zEOyYaLqczBEsGxIVFxBtMjcgdoYX+1FTVfOM/jurACXCEwedr6oYriYX2cXCVWgtEqR
	05oSYOp0yxHY7merzOC2RftJcn6yvSITpythxgYh7k68bqEhurRrhmW9Hg3I+ZFwpS2R9znNjrKt7
	Kff/lOz93u2b7Ji8e5YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKAV5-0000000DZBM-3d08;
	Sat, 15 Nov 2025 07:15:11 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKAV2-0000000DZAM-28Qc;
	Sat, 15 Nov 2025 07:15:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 1D9E540FDD;
	Sat, 15 Nov 2025 08:14:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763190900; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=RFjj/nmYrfHeiQliAIzx66lW/uKVowOIl76QQ6gErtU=;
	b=DYq1aUGyBIz//RUO1UxSY34BPB+qUTKu0Q1lOfHllPQsR/SxH6rLoOtwjei2MRvVGVPMka
	+ALnfePVaReR03oE/Udt3hNvydOenpGBneQbcHbE+2dGY4cb4BKb9oOLF5QE3J9hmiCqwa
	AXdij9khhMj7faBdN4JPb88fEUaPm7hmjetXfq6hnp8m0WbK72gRBEkhWetEe0XMs8t+Fk
	l2htDeQkJRZ+ChsW+pY7hahnWGF2wCyvrNT577OtH3AxSiVAGMscb8crmJ6Us5LHfBNtEI
	Bv3Uo3szj7EnS7MHA52XkZkPko7rI0v4+B2wxxbGxmmO6Pw7GofyugaBMAmMyg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <bb74679a-ce21-4373-bcc5-1214e9bf832e@rootcommit.com>
References: <12d6e151-dfa0-ca0a-5888-ddffb2dbdec7@manjaro.org> <bb74679a-ce21-4373-bcc5-1214e9bf832e@rootcommit.com>
Date: Sat, 15 Nov 2025 08:14:58 +0100
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Michael Opdenacker" <michael.opdenacker@rootcommit.com>
MIME-Version: 1.0
Message-ID: <24561990-8293-0505-5837-eca416d01bb7@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2 2/2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add Asus Tinker Board 3 and 3S device tree
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_231508_798511_3CFE5DF8 
X-CRM114-Status: GOOD (  16.11  )
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

Hello Michael,

On Saturday, November 15, 2025 07:03 CET, Michael Opdenacker <michael.opdenacker@rootcommit.com> wrote:
> On 11/15/25 01:53, Dragan Simic wrote:
> > Thanks for the v2!  Please, see one nitpick below.
> >
> > On Friday, November 14, 2025 16:46 CET, michael.opdenacker@rootcommit.com wrote:
> >> From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
> > I'm sorry for not mentioning it in my earlier responses, but this
> > line is redundant, because it duplicates the From value found in
> > the actual email message.
> 
> This actually comes from my Git settings. I need this when I send 
> patches to the Yocto project and OpenEmbedded. That's because their 
> mailing list server which alters the address of senders ("<sender> via 
> lists.yoctoproject.org"), and ultimately the commit author identity in 
> Git. See 
> https://docs.yoctoproject.org/contributor-guide/submit-changes.html#fixing-your-from-identity
> 
> I've checked that my patches apply fine and that this "From:" line 
> doesn't appear in the commits in the tree.
> So, can I keep this?

Actually, I forgot to mention that the From headers in your patch
submissions are a bit wrong by containing just the email address,
without the first and last name.  That issue should be fixed first,
regardless of the presence (or absence) of From tags.

Thanks for clarifying what's the reason for having the From tags
regardless of the actual need for having them.  Maybe setting Git's
"format.from" option to true at the repository level could solve
this nicely, while also exercising the Git-fu a bit? :)

BTW, my responses are currently jailed by the linux-rockchip mailing
list, requiring manual approval, as a result of the mail server I'm
using sometimes inserting some strange invisible UTF-8 characters
into the email subjects.  Oh well. :)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
