Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE0A6CCD1AF
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 20:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ya/Jm74/6VMgtFLx38aGs7dhh3kCIPFTb4avvNEG7Ok=; b=zSHOhKkM/iHYxj
	faxF1gYuvewHAvNCTHdH5wo7ratUUiJeN39GCf8m3QLe1GJb6+FS+7qtOPyhggJBx0bB76Y9dOhWf
	N5Qc493CwLPTj4DPtEkpTdHE0r73ZOjDNf9/+W4XmHn+syofvVxH6gABarMRoQ+Kohyvpl59Gds/c
	2aSkvh4FFJz3qcFVO7xlRqFr5BD66niWSIpxENZVPmTLIoKIOAcyqsDJyU5gsQ9N+OWCz0BrUpYYg
	xNGz12NaEqtlVS89PmioPd6uGPpf6BsiAC3RJIstofuMazz+nIq0xP1VWlk0LiV2ob+63xwA0PCCF
	lH6TS/iBDicEMSiFLjEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBIuF-00000000apR-2dnt;
	Tue, 21 Oct 2025 20:24:31 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBIuC-00000000aou-44N2
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Oct 2025 20:24:30 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id ED39D40BC6;
	Tue, 21 Oct 2025 22:24:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1761078263; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=uRTIypVGOsnyZCsYMr5/fTetx/q6vvmb8JAu2MC9Kmw=;
	b=oDhE0St69+oyArqFdw9E/fR1mNbhDyo9hUeUb6Q99gndb1Ey3c0/E28+n07JcNtNduTtfL
	K7REEs6crI2rOmcHQqWNoCjfEtgJpVkp4u7JmEthW7B8NDjK848YCrzxH3v3HDvYyv9a+i
	8RBlXqKreA8w9+ONIBq97QR4GsZjzj2gXH3aZAfHT0sBPipyHt3wytxTXGqV4jjcKHBlSt
	eDqMUGeX/sxmfIQv8GgLJRgNU5HdM4tksi/INd5+DVJUfPeUxfAqi711rAnTwR9qcBjVQ4
	6E/A8pKZIOzqxVmnGSwptT2UgIrUEtIDvWVAIvKfuMaHLMfhyqYShQ4inbYyPA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <1066e578-f543-4233-b556-ae458c9327a1@gmail.com>
References: <1760924981-52339-1-git-send-email-shawn.lin@rock-chips.com> <1066e578-f543-4233-b556-ae458c9327a1@gmail.com>
Date: Tue, 21 Oct 2025 22:24:19 +0200
Cc: "Shawn Lin" <shawn.lin@rock-chips.com>, "Ulf Hansson" <ulf.hansson@linaro.org>, "Adrian Hunter" <adrian.hunter@intel.com>, linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org
To: "Hugh Cole-Baker" <sigmaris@gmail.com>
MIME-Version: 1.0
Message-ID: <84a6b292-868d-c202-6e60-28f21390cc09@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH] =?utf-8?q?mmc=3A?=
 =?utf-8?q?_sdhci-of-dwcmshc=3A?= Change 
 =?utf-8?q?DLL=5FSTRBIN=5FTAPNUM=5FDEFAULT?= to 0x4
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-Rspamd-Fuzzy: 69dcb66f27f50339b382001a23347050eeac735c9995c52c316482e551ae70497dfb99c03ee0e7f790e033079b1e0efc574aeaf25ee4704f2a12387171d4d0f4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_132429_279189_C768FE83 
X-CRM114-Status: GOOD (  12.94  )
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

Hello Hugh and Shawn.

On Tuesday, October 21, 2025 22:04 CEST, Hugh Cole-Baker <sigmaris@gmail.com> wrote:
> On 20/10/2025 02:49, Shawn Lin wrote:
> > strbin signal delay under 0x8 configuration is not stable after massive
> > test. The recommandation of it should be 0x4.
> > 
> > Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> > ---
> > 
> >  drivers/mmc/host/sdhci-of-dwcmshc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> > index eebd453..5b61401 100644
> > --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> > +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> > @@ -94,7 +94,7 @@
> >  #define DLL_TXCLK_TAPNUM_DEFAULT	0x10
> >  #define DLL_TXCLK_TAPNUM_90_DEGREES	0xA
> >  #define DLL_TXCLK_TAPNUM_FROM_SW	BIT(24)
> > -#define DLL_STRBIN_TAPNUM_DEFAULT	0x8
> > +#define DLL_STRBIN_TAPNUM_DEFAULT	0x4
> >  #define DLL_STRBIN_TAPNUM_FROM_SW	BIT(24)
> >  #define DLL_STRBIN_DELAY_NUM_SEL	BIT(26)
> >  #define DLL_STRBIN_DELAY_NUM_OFFSET	16
> 
> This patch gets the Foresee A3A444 eMMC on my NanoPC-T6 board to work reliably
> in HS400 Enhanced Strobe mode; before this patch it would suffer from I/O
> errors in HS400 mode as discussed in the other thread [1].
> 
> Tested-by: Hugh Cole-Baker <sigmaris@gmail.com>

Those are great results, thanks for the testing, Hugh!  Of course,
huge thanks to Shawn for fixing the root cause of the issue, which
avoided the need for having a questionable HS200 quirk described
in the above-mentioned linux-rockchip thread. [1]

> [1]: https://lore.kernel.org/linux-rockchip/52537005-b8a3-c202-770c-599efc6a4d17@manjaro.org/T/


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
