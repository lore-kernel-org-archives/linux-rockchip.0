Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 101ACC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 16:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D7DvpCKNj4fn1asd3DJEunfaUWGJYdua84mXM/gTmic=; b=DElxkkCGfEPxA/
	blN6D/0GR7FRhuQOGs7S9ioCFCG7Z1UDOUXsqqrnBPJYRoDs039xjvQCO12Lx3qNVdZjT/mrCq5Sp
	HC4Y8bD7szB1GBMlFn2otpbr74XnEZ5sLRs1vc+1vvSvvVkJOD7/oUV9DaKr0OEv6qktZ+KzJmU/D
	9LDoh4AVSO1gPCHj9ThNHMvMMyb7iAity5TGtdiDtmsjEdI6LqmFkpvoU5isTkdMTae74igUkVhXx
	aq6cToNj+a5L2yq/JaFTJ2V0SEvGawRlci1pPFSyoq2P+tolmSKEvN1QheXsoaeOZpI/aM62yOmG8
	LKsO+5dXYg/tvkwxIsFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxtvx-006jLM-3O; Thu, 16 Dec 2021 16:48:45 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxtk8-006ejD-F4
 for linux-rockchip@lists.infradead.org; Thu, 16 Dec 2021 16:36:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1639672581;
 bh=/AbJGsc+dkLlG/Crdoxg/i9h2UZPWSTdX2g4mIfzJC0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=QZvaS/2vp2wvumNwP2p9GDMS+WhVLLMLj4RIy5PkU+HQTNwp6X1P+yMarmZG3a+2h
 G2vMcFahcME2KyBe63Zx7N3NRLVPAcMzHutuij8PhinoViECjEVnFG1No/FvMUMXrG
 E3Xb49u5QpPUxpR5/bA/FVVO/H+By7XBnnfJTKck=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.157.8] ([217.61.157.8]) by web-mail.gmx.net
 (3c-app-gmx-bap16.server.lan [172.19.172.86]) (via HTTP); Thu, 16 Dec 2021
 17:36:21 +0100
MIME-Version: 1.0
Message-ID: <trinity-18dddf5d-bc73-453d-a9eb-954de1ab7cc7-1639672581601@3c-app-gmx-bap16>
From: Frank Wunderlich <frank-w@public-files.de>
To: Robin Murphy <robin.murphy@arm.com>, Peter Geis <pgwipeout@gmail.com>
Cc: Frank Wunderlich <linux@fw-web.de>, Lee Jones <lee.jones@linaro.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Aw: Re: [PATCH 1/2] mfd: rk808: add reboot support to rk808 pmic
Date: Thu, 16 Dec 2021 17:36:21 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <fe895d71-5f1f-daf0-bde8-c8ab5f4c0128@arm.com>
References: <20211215213300.4778-1-linux@fw-web.de>
 <20211215213300.4778-2-linux@fw-web.de>
 <fe895d71-5f1f-daf0-bde8-c8ab5f4c0128@arm.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:S5uDaFlDscxRzpQVDFb8E4cYXWI5fyFsA/fFhQaFn8DZ1YSZI4MQXF5quP6Gs9iaCmCyT
 RMrb00sUuIikMWruGhu4sYBfyugHMa0nLO4WE7oYJ3UbluBUU6ugyvEIgrQUqY/I6BU4tn025DfW
 N9QzHY+S7Plh5rSUMzNtZ6RBpZYBJzTeSIqjDVKy+EoS8jmB5/nFsT5SWXtuA4fBC7l3Aw1Eardt
 DdI4MpNhV3lRbcucRlpg9wtA9dnqz52/dj1LLSdb9noEj6jBe+RtEa2SOIFpU8hpx77WHkUsX5qI
 Vc=
X-UI-Out-Filterresults: notjunk:1;V03:K0:Nfl6KFGRvEA=:F/5Flh65VOiCs5gOrs6dQy
 EH/LIyOl2NqGYk9gH7mK/G32o4WCzqEXPzcpud/HY3ILAvYyeae+BKc9CeVd9ZVEg6U5reStM
 zWpE7iuUmoue5Hy/CyOtRQT9mbwDP/yyvA9cS2q2ipkvKeEjDdz5BRmz3bXiYRE50FSkRinbo
 sJSOMr+ISJsPHOSNcm8lFogda5rSUkXPDqND9bHoobVJONd0QZyKtp2eKvWVIdJdYuWlXS8zp
 GJFAMmuA5Uq9kyR4hw+eJGiIMSHvy5GjnBT7cgF/KHBbxEQHpsewXeNbIKag0Y7poDMU5GlCp
 fje0m7ZtnOwrajTouCbDFir1a1W8R+mDBBUJiXuwtyuWNeOjGwG2Dfdno1aZj2KdgrnVjgSdZ
 Md7qBTNVgNyM2KSgbmjuLqyl6180ivBUrFLYeczeNLdY41BOw9RK2K2fBVAow0WWQRp6ynt1v
 zZLret2aY8Y+ALoCzjfp0AxxFrsEHL0ynvilKs305FUVg3T53Pto2qxAel4lXOq26F5h3T7VC
 I8d7S8YjtWZstUwxxTSEAXMUI6Wwz9aXSFetNlH5sy7UQE9wsbka9E/so4bZbgraH/Zqus27u
 I8pYIFR40LMIeCvmG8UEQjRNdObBz9q167wP3KhA80+58W1Wf/jHgu4YpGjR+JlKWyP2IOmyJ
 L4CuESmPeuqImO0+ePEMkUxikI+rWZJFJf0ImJCVOWgIFMLcfV/KmTEt7XMM8s9DVERDlNsZY
 1n+j2JZkcCLnXCiKYPIgI+M6f9NqjTWE/Jr9dW1dAzf+SWJ6yQtoox7bn3i3VWFiUp6Vi6Wy5
 jttfB72
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_083632_909481_92D47E72 
X-CRM114-Status: GOOD (  21.55  )
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

Hi Robin

thanks for your review

> Gesendet: Donnerstag, 16. Dezember 2021 um 14:17 Uhr
> Von: "Robin Murphy" <robin.murphy@arm.com>

> > +	dev_err(&rk808_i2c_client->dev, "poweroff device!\n");
>
> This is not an error.

ack, we can change to dev_dbg/dev_info or drop completely

> > @@ -552,6 +554,7 @@ static void rk808_pm_power_off(void)
> >   		bit = DEV_OFF;
> >   		break;
> >   	default:
> > +		dev_err(&rk808_i2c_client->dev, "poweroff device not supported!\n");
>
> If we really don't support power off for the present PMIC then we should
> avoid registering the power off handler in the first place. These
> default cases should mostly just serve to keep static checkers happy.

currently we had added all device-ids supported by probe. Before my Patch (Part2) rk809 was missing.
It is not registered for (currently) unsupported IDs as probe exits with -EINVAL for unsupported IDs before.

If anyone adds init-code in future but not poweroff/restart part we ran into this. So i would leave this message.

registering handler depending on supported devices (for poweroff/restart function) imho makes code less readable.

> > @@ -559,6 +562,44 @@ static void rk808_pm_power_off(void)
> >   		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
> >   }
> >
> > +static int rk808_restart_notify(struct notifier_block *this, unsigned long mode, void *cmd)
> > +{
> > +	int ret;
> > +	unsigned int reg, bit;
> > +	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
> > +
> > +	switch (rk808->variant) {
> > +	case RK805_ID:
> > +		reg = RK805_DEV_CTRL_REG;
> > +		bit = DEV_OFF_RST;
> > +		break;
> > +	case RK808_ID:
> > +		reg = RK808_DEVCTRL_REG,
> > +		bit = DEV_OFF;
>
> Is that right? The RK808 datasheet does say that this bit resets itself
> once the OFF state is reached, but there doesn't seem to be any obvious
> guarantee of a power-on condition being present to automatically
> transition back to ACTIVE.

i think you're right...imho it should be DEV_OFF_RST in restart_notify and DEV_OFF in poweroff

> > @@ -727,6 +768,13 @@ static int rk808_probe(struct i2c_client *client,
> >   	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
> >   		rk808_i2c_client = client;
> >   		pm_power_off = rk808_pm_power_off;
> > +		rk808->nb = &rk808_restart_handler;
>
> The handler just relies on the global rk808_i2c_client anyway, so does
> this serve any purpose?

i guess

ret = register_restart_handler(&rk808_restart_handler);

is better here too.

i cannot figure out why storing the function-pointer in rk808->nb too as this seems not to be used anywhere else

> > +
> > +		dev_warn(&client->dev, "register restart handler\n");
>
> Don't scream a warning about normal and expected operation.

ack

> Thanks,
> Robin.

@Peter, what do you think?

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
