Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0757CC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Mar 2022 12:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EChDfOyJWSZo1lruJ9TAoaUpANqx0Vvpk9RM+EPCeTQ=; b=HkdyEAnQe7A/aj
	ognrOO0M9fJ+OWHc/AMpyGqznSAlyBE6Q6A0Rr0PmYIr9OYztMGaIZStg/7nHQG17wcK9p6AQb7C5
	GiZ3mFv+KH15xJdxqNTHlPl+0TzcBfG9xAKU1BtUwwh7GLjN25q0lfwLVxmgxfnAc1qrN6rrVX5Y6
	qT9x1ieKp4Av7xTY5YpC7Vit9TBzED11p1qNrr8aS8gWfecPnLHX4s8gNTIzEHlRg9raFrZvhaOSQ
	O1hCWIZ+01JMjbJrcVrJEBA3kgRD55QAsoEStVJrgw7VHvf8vWU2S5LnwOnXEzlZmBtURxvjRMpjS
	iE0y2O2WDOJS68pWncZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQqR6-00EjGA-AT; Sun, 06 Mar 2022 12:56:32 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQqR1-00EjF8-Ql; Sun, 06 Mar 2022 12:56:29 +0000
Received: by mail-ej1-x62e.google.com with SMTP id qt6so26582931ejb.11;
 Sun, 06 Mar 2022 04:56:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:content-language:to:cc
 :references:from:subject:in-reply-to:content-transfer-encoding;
 bh=6IUT2JpOQz2LxEAZvtwNhETfaIoKZiOqm5nil9PEULE=;
 b=gR5qHK82b0cbMkSnt8yA1eZ1EAPkY/xieSnijOc+gBh4DjbBO3Ny7TFqqEwZX2PGie
 fVoSG1c+XNCQ4Rq0t2y9kPtSYAYwPzcqQ3cJ/vQvcTz2BPpQzfrglLQ0klIoDohFnPf8
 ovRy1ytutm4ytymGGIXTFxD1SgVjO0dTp+Gfwa/+HS9d+duY9i06hsIH+/oZnyApoKfS
 V7jP9DBoG/hFjsx7VPfCnVZYa05Qplr3avyvwf/BTduOFJWtppxBmchxVS5zS5VmJ89T
 w4W+fJFlTd1FuOtIAv4r+t9fgoAoTughrxfUIPMsZb7KHnbYVYJcFGAlzwHZ+QOHQAlD
 AEhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent
 :content-language:to:cc:references:from:subject:in-reply-to
 :content-transfer-encoding;
 bh=6IUT2JpOQz2LxEAZvtwNhETfaIoKZiOqm5nil9PEULE=;
 b=gEEurO+Wws58ZKV5C/1vsH+cSjYaSaSlZuJtQ/rkKVtD7srbnRYKzVRTOHrTM9brB3
 FAPR9UcusyHY145kzEbafso0+AWBj6+SK6vrLrpNaLltgw7ycK2JM/tGX13fFY5W3TY9
 wGbX3iRlUHbgftfYkHXqwwbASph4p5AMMFdWXQSlbFYN/HBUysfq6pSZN6O1UrB05WIt
 5JqC0LsLptxxd9WUVmexH2c7WwQ/qjATAAcqAwlePi/XxhXefq9rvoLWwmYHx5BICyEY
 1u2ErOX2jamkN9SYp+mfeV+m/QNuofjywoj9FtbIyNvwOfjM7RopYPS1EyRw5a0yxnr/
 YRVw==
X-Gm-Message-State: AOAM531IH5mVBZDQavDJZC5rwuBk/Ll6cU2I7sPF/uiEGLSqXgONtCLq
 5dMdaoSGDvw5IkTU/KzXzB0=
X-Google-Smtp-Source: ABdhPJw6QSrWGj887HTq+29QOPuGI9MPGlHb309kRr2oEF0TBIcS1pKmbk+bUpvdCfelTc3sm36mvg==
X-Received: by 2002:a17:907:7b86:b0:6da:8a95:35bf with SMTP id
 ne6-20020a1709077b8600b006da8a9535bfmr5631438ejc.652.1646571385531; 
 Sun, 06 Mar 2022 04:56:25 -0800 (PST)
Received: from ?IPV6:2a01:c22:7720:f200:10e7:aa42:9870:907c?
 (dynamic-2a01-0c22-7720-f200-10e7-aa42-9870-907c.c22.pool.telefonica.de.
 [2a01:c22:7720:f200:10e7:aa42:9870:907c])
 by smtp.googlemail.com with ESMTPSA id
 fx13-20020a170906b74d00b006da9e406786sm3364106ejb.189.2022.03.06.04.56.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 06 Mar 2022 04:56:25 -0800 (PST)
Message-ID: <435b2a9d-c3c6-a162-331f-9f47f69be5ac@gmail.com>
Date: Sun, 6 Mar 2022 13:56:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: Erico Nunes <nunes.erico@gmail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Jose Abreu <joabreu@synopsys.com>, Kevin Hilman <khilman@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-amlogic@lists.infradead.org,
 netdev@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-sunxi@lists.linux.dev
References: <CAK4VdL3-BEBzgVXTMejrAmDjOorvoGDBZ14UFrDrKxVEMD2Zjg@mail.gmail.com>
 <1jczjzt05k.fsf@starbuckisacylon.baylibre.com>
 <CAK4VdL2=1ibpzMRJ97m02AiGD7_sN++F3SCKn6MyKRZX_nhm=g@mail.gmail.com>
 <6b04d864-7642-3f0a-aac0-a3db84e541af@gmail.com>
 <CAK4VdL0gpz_55aYo6pt+8h14FHxaBmo5kNookzua9+0w+E4JcA@mail.gmail.com>
 <1e828df4-7c5d-01af-cc49-3ef9de2cf6de@gmail.com>
 <1j8rts76te.fsf@starbuckisacylon.baylibre.com>
 <a4d3fef1-d410-c029-cdff-4d90f578e2da@gmail.com>
 <CAK4VdL08sdZV7o7Bw=cutdmoCEi1NYB-yisstLqRuH7QcHOHvA@mail.gmail.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: net: stmmac: dwmac-meson8b: interface sometimes does not come up
 at boot
In-Reply-To: <CAK4VdL08sdZV7o7Bw=cutdmoCEi1NYB-yisstLqRuH7QcHOHvA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220306_045627_927277_C90DBC39 
X-CRM114-Status: GOOD (  40.48  )
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

On 06.03.2022 10:40, Erico Nunes wrote:
> On Wed, Mar 2, 2022 at 5:35 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>> When using polling the time difference between aneg complete and
>> PHY state machine run is random in the interval 0 .. 1s.
>> Hence there's a certain chance that the difference is too small
>> to avoid the issue.
>>
>>> If I understand the proposed patch correctly, it is mostly about the phy
>>> IRQ. Since I reproduce without the IRQ, I suppose it is not the
>>> problem we where looking for (might still be a problem worth fixing -
>>> the phy is not "rock-solid" when it comes to aneg - I already tried
>>> stabilising it a few years ago)
>>
>> Below is a slightly improved version of the test patch. It doesn't sleep
>> in the (threaded) interrupt handler and lets the workqueue do it.
>>
>> Maybe Amlogic is aware of a potentially related silicon issue?
>>
>>>
>>> TBH, It bothers me that I reproduced w/o the IRQ. The idea makes
>>> sense :/
>>>
>>>>
>> [...]
>>>
>>
>>
>> diff --git a/drivers/net/phy/meson-gxl.c b/drivers/net/phy/meson-gxl.c
>> index 7e7904fee..a3318ae01 100644
>> --- a/drivers/net/phy/meson-gxl.c
>> +++ b/drivers/net/phy/meson-gxl.c
>> @@ -209,12 +209,7 @@ static int meson_gxl_config_intr(struct phy_device *phydev)
>>                 if (ret)
>>                         return ret;
>>
>> -               val = INTSRC_ANEG_PR
>> -                       | INTSRC_PARALLEL_FAULT
>> -                       | INTSRC_ANEG_LP_ACK
>> -                       | INTSRC_LINK_DOWN
>> -                       | INTSRC_REMOTE_FAULT
>> -                       | INTSRC_ANEG_COMPLETE;
>> +               val = INTSRC_LINK_DOWN | INTSRC_ANEG_COMPLETE;
>>                 ret = phy_write(phydev, INTSRC_MASK, val);
>>         } else {
>>                 val = 0;
>> @@ -240,7 +235,10 @@ static irqreturn_t meson_gxl_handle_interrupt(struct phy_device *phydev)
>>         if (irq_status == 0)
>>                 return IRQ_NONE;
>>
>> -       phy_trigger_machine(phydev);
>> +       if (irq_status & INTSRC_ANEG_COMPLETE)
>> +               phy_queue_state_machine(phydev, msecs_to_jiffies(100));
>> +       else
>> +               phy_trigger_machine(phydev);
>>
>>         return IRQ_HANDLED;
>>  }
>> --
>> 2.35.1
> 
> I did a lot of testing with this patch, and it seems to improve things.
> To me it completely resolves the original issue which was more easily
> reproducible where I would see "Link is Up" but the interface did not
> really work.
> At least in over a thousand jobs, that never reproduced again with this patch.
> 
> I do see a different issue now, but it is even less frequent and
> harder to reproduce. In those over a thousand jobs, I have seen it
> only about 4 times.
> The difference is that now when the issue happens, the link is not
> even reported as Up. The output is a bit different than the original
> one, but it is consistently the same output in all instances where it
> reproduced. Looks like this (note that there is no longer Link is
> Down/Link is Up):
> 
> [    2.186151] meson8b-dwmac c9410000.ethernet eth0: PHY
> [0.e40908ff:08] driver [Meson GXL Internal PHY] (irq=48)
> [    2.191582] meson8b-dwmac c9410000.ethernet eth0: Register
> MEM_TYPE_PAGE_POOL RxQ-0
> [    2.208713] meson8b-dwmac c9410000.ethernet eth0: No Safety
> Features support found
> [    2.210673] meson8b-dwmac c9410000.ethernet eth0: PTP not supported by HW
> [    2.218083] meson8b-dwmac c9410000.ethernet eth0: configuring for
> phy/rmii link mode
> [   22.227444] Waiting up to 100 more seconds for network.
> [   42.231440] Waiting up to 80 more seconds for network.
> [   62.235437] Waiting up to 60 more seconds for network.
> [   82.239437] Waiting up to 40 more seconds for network.
> [  102.243439] Waiting up to 20 more seconds for network.
> [  122.243446] Sending DHCP requests ...
> [  130.113944] random: fast init done
> [  134.219441] ... timed out!
> [  194.559562] IP-Config: Retrying forever (NFS root)...
> [  194.624630] meson8b-dwmac c9410000.ethernet eth0: PHY
> [0.e40908ff:08] driver [Meson GXL Internal PHY] (irq=48)
> [  194.630739] meson8b-dwmac c9410000.ethernet eth0: Register
> MEM_TYPE_PAGE_POOL RxQ-0
> [  194.649138] meson8b-dwmac c9410000.ethernet eth0: No Safety
> Features support found
> [  194.651113] meson8b-dwmac c9410000.ethernet eth0: PTP not supported by HW
> [  194.657931] meson8b-dwmac c9410000.ethernet eth0: configuring for
> phy/rmii link mode
> [  196.313602] meson8b-dwmac c9410000.ethernet eth0: Link is Up -
> 100Mbps/Full - flow control off
> [  196.339463] Sending DHCP requests ., OK
> ...
> 
> 
> I don't remember seeing an output like this one in the previous tests.
> Is there any further improvement we can do to the patch based on this?
> 
> Thanks
> 
> Erico

Thanks a lot for your testing efforts, much appreciated.
You could try the following (quick and dirty) test patch that fully mimics
the vendor driver as found here:
https://github.com/khadas/linux/blob/buildroot-aml-4.9/drivers/amlogic/ethernet/phy/amlogic.c

First apply
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=a502a8f04097e038c3daa16c5202a9538116d563
This patch is in the net tree currently and should show up in linux-next
beginning of the week.

On top please apply the following (it includes the test patch your working with).


diff --git a/drivers/net/phy/meson-gxl.c b/drivers/net/phy/meson-gxl.c
index c49062ad7..92f94c8be 100644
--- a/drivers/net/phy/meson-gxl.c
+++ b/drivers/net/phy/meson-gxl.c
@@ -68,32 +68,19 @@ static int meson_gxl_open_banks(struct phy_device *phydev)
 	return phy_write(phydev, TSTCNTL, TSTCNTL_TEST_MODE);
 }
 
-static void meson_gxl_close_banks(struct phy_device *phydev)
-{
-	phy_write(phydev, TSTCNTL, 0);
-}
-
 static int meson_gxl_read_reg(struct phy_device *phydev,
 			      unsigned int bank, unsigned int reg)
 {
 	int ret;
 
-	ret = meson_gxl_open_banks(phydev);
-	if (ret)
-		goto out;
-
 	ret = phy_write(phydev, TSTCNTL, TSTCNTL_READ |
 			FIELD_PREP(TSTCNTL_REG_BANK_SEL, bank) |
 			TSTCNTL_TEST_MODE |
 			FIELD_PREP(TSTCNTL_READ_ADDRESS, reg));
 	if (ret)
-		goto out;
+		return ret;
 
-	ret = phy_read(phydev, TSTREAD1);
-out:
-	/* Close the bank access on our way out */
-	meson_gxl_close_banks(phydev);
-	return ret;
+	return phy_read(phydev, TSTREAD1);
 }
 
 static int meson_gxl_write_reg(struct phy_device *phydev,
@@ -102,29 +89,28 @@ static int meson_gxl_write_reg(struct phy_device *phydev,
 {
 	int ret;
 
-	ret = meson_gxl_open_banks(phydev);
-	if (ret)
-		goto out;
-
 	ret = phy_write(phydev, TSTWRITE, value);
 	if (ret)
-		goto out;
+		return ret;
 
-	ret = phy_write(phydev, TSTCNTL, TSTCNTL_WRITE |
-			FIELD_PREP(TSTCNTL_REG_BANK_SEL, bank) |
-			TSTCNTL_TEST_MODE |
-			FIELD_PREP(TSTCNTL_WRITE_ADDRESS, reg));
+	return phy_write(phydev, TSTCNTL, TSTCNTL_WRITE |
+			 FIELD_PREP(TSTCNTL_REG_BANK_SEL, bank) |
+			 TSTCNTL_TEST_MODE |
+			 FIELD_PREP(TSTCNTL_WRITE_ADDRESS, reg));
 
-out:
-	/* Close the bank access on our way out */
-	meson_gxl_close_banks(phydev);
-	return ret;
 }
 
 static int meson_gxl_config_init(struct phy_device *phydev)
 {
 	int ret;
 
+	phy_set_bits(phydev, 0x1b, BIT(12));
+	phy_write(phydev, 0x11, 0x0080);
+
+	meson_gxl_open_banks(phydev);
+
+	ret = meson_gxl_write_reg(phydev, BANK_ANALOG_DSP, 0x17, 0x8e0d);
+
 	/* Enable fractional PLL */
 	ret = meson_gxl_write_reg(phydev, BANK_BIST, FR_PLL_CONTROL, 0x5);
 	if (ret)
@@ -140,6 +126,10 @@ static int meson_gxl_config_init(struct phy_device *phydev)
 	if (ret)
 		return ret;
 
+	ret = meson_gxl_write_reg(phydev, BANK_ANALOG_DSP, 0x18, 0x000c);
+	ret = meson_gxl_write_reg(phydev, BANK_ANALOG_DSP, 0x17, 0x1a0c);
+	ret = meson_gxl_write_reg(phydev, BANK_ANALOG_DSP, 0x1a, 0x6400);
+
 	return 0;
 }
 
@@ -186,7 +176,7 @@ static int meson_gxl_read_status(struct phy_device *phydev)
 		if (!(wol & LPI_STATUS_RSV12) ||
 		    ((exp & EXPANSION_NWAY) && !(lpa & LPA_LPACK))) {
 			/* Looks like aneg failed after all */
-			phydev_dbg(phydev, "LPA corruption - aneg restart\n");
+			phydev_warn(phydev, "LPA corruption - aneg restart\n");
 			return genphy_restart_aneg(phydev);
 		}
 	}
@@ -243,11 +233,23 @@ static irqreturn_t meson_gxl_handle_interrupt(struct phy_device *phydev)
 	    irq_status == INTSRC_ENERGY_DETECT)
 		return IRQ_HANDLED;
 
-	phy_trigger_machine(phydev);
+	/* Give PHY some time before MAC starts sending data. This works
+	 * around an issue where network doesn't come up properly.
+	 */
+	if (irq_status & INTSRC_ANEG_COMPLETE)
+		phy_queue_state_machine(phydev, msecs_to_jiffies(100));
+	else
+		phy_trigger_machine(phydev);
 
 	return IRQ_HANDLED;
 }
 
+static void meson_gxl_link_change_notify(struct phy_device *phydev)
+{
+	if (phydev->state == PHY_RUNNING && phydev->speed == SPEED_100)
+		meson_gxl_write_reg(phydev, BANK_ANALOG_DSP, 0x14, 0xa900);
+}
+
 static struct phy_driver meson_gxl_phy[] = {
 	{
 		PHY_ID_MATCH_EXACT(0x01814400),
@@ -259,6 +261,7 @@ static struct phy_driver meson_gxl_phy[] = {
 		.read_status	= meson_gxl_read_status,
 		.config_intr	= meson_gxl_config_intr,
 		.handle_interrupt = meson_gxl_handle_interrupt,
+		.link_change_notify = meson_gxl_link_change_notify,
 		.suspend        = genphy_suspend,
 		.resume         = genphy_resume,
 	}, {
-- 
2.35.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
