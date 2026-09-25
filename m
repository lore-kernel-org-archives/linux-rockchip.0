Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32A6CC9830D
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2026 10:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=elA6CwdQpBjSEUysG2E8dfDZZTllcUGtipgphH98BgM=; b=eas0ldPm3+VCEi
	+of1Flswr3C0TygoSzjvhv10gAaaX+4w70cmSUXEw77wiB+gkzc1mr+2OZhxn7SzWlfPGb0Hqez5L
	DqTVuHYMh/DiFvaTzsEocwTImwwTb7Y9FDy2AmlBcuqnYxS5ttNPPDN/uMi451MiLXC6eHpZAnH6o
	vWRGcTTzhnoZm2BPdVUMeAu8RbqdD3bn6pNEMXp5fuheiB2mKTLbf4XCi63St6fMo75HMs0QAnogu
	CJzZbGOpDtIrkrVDz8htqqczPy27GbuTCufHjbiser/k2IsEoJjluzVBB7h8CHmGGWWIrgj5pOR/6
	6clQ5pOM2iU+E++O/4Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA3Oa-0000000D7Z9-1E58;
	Fri, 25 Sep 2026 10:43:12 +0000
Received: from mail-pj2-x0d.google.com ([2607:f8b0:4864:39::d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA3OX-0000000D7YR-3FQ3
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Sep 2026 10:43:11 +0000
Received: by mail-pj2-x0d.google.com with SMTP id 98e67ed59e1d1-3a0b89592d2so318746a91.2
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Sep 2026 03:43:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790332988; cv=none;
        d=google.com; s=arc-20260327;
        b=n9tOg7Nuo+Ae3kjVdZ/wCPUushoTUNAmW8bqn0zuGhtxUPt4iqfab/ErYXLLRzEd7X
         r+A/FHXDEoTB4Oc0wPr5CF9a1MxniyyKtKRIq3xzzfpe/L61QTPM9XZbbOWNsyMEeJbf
         aG7iR6akulEQKbfpoVfPZMJ8OWCYHK1sMe0e0VZLida4smNtZMvlV0nOA81OiocJotW2
         djnWA2oWt4XGtafF5aVuVbZtEdkZ40afF/NCd+cYaMuKspe5kHe1VpoNBlJmZm3VGui0
         J0Eh8HKk+OR4jPXBalMNVOuxhyp/dfFrdMm12GmQEA6ubeq3gVw1Euod8oEt6MqbA54u
         kKUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BRpIuFoFTSYDMCEFJGiUusnifNbms8g6CYYPzdMnXGI=;
        fh=L1Olj5+dUrPvSbNzCGyXeJlFDFzxbSd/fDsTDZdB6Bc=;
        b=KZHJ4ah67vnVsLKtSaVd2WQwg/QzbHMcTk7N2KFF5C46N6Y2A+Xtpyr4S+LPFvuodA
         1HGZtCL+gRdidNXILLpY2gO9cf0lrrDPh2o3mDfVCs78mmAXPlNwPeVrmoSTgkHH/+Vl
         mYF4xpc2Yp2/iY6GnU8dmZyWyj75rMf4FDVl9V7n+Fad0u676xNK54kG8+YIEjF87h+B
         BN/GFiz9R1bYnWpY1V53u4DGiUqZmm6265kATMHNa0yDRvJFsueibe9mS6HuZCU10YWB
         F/1Rer1kVjzd2db3pI09ZGrOiMKlZ37LW8R5611gSO/5pjECO6MyUwVQ1lkFKNIVd+PC
         PZ7A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1790332988; x=1790937788; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BRpIuFoFTSYDMCEFJGiUusnifNbms8g6CYYPzdMnXGI=;
        b=ks/NNwiVDsQqQIInwm+AD2w0XChfFkP0yU5+tLOnaYdO8nGWod7X9AW8sDby7FMicK
         NQ2jxHd8m1qVNqA7BIgr4OqzU10Jf1zSPnErMo140IWG5lgNwNv5rKkywOshQR3JwqOp
         mepzlOeogIA9FVAqCbF/12Z9jUT29hZRa4eVZt1fJ7bqq14nruMEuxuRUga2eKJma7by
         8ZF9SSjmHdrTeFn/J/5f8Lbc/dmtM/t+KiQX0sRp2hjT1fUl/LYGkSvSRCOXCs50kOks
         eJyEyOc4ct+PNkbAugg2Hvl9usOZ/GSi6YJijZ3QIwpVcxA22myxErVpHi0kLMYcc1dk
         TnvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790332988; x=1790937788;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=BRpIuFoFTSYDMCEFJGiUusnifNbms8g6CYYPzdMnXGI=;
        b=yxUURZ6ep4lSm/Jocj3ZffqDPwaA+pTRAwHWbi+Uwc46CYkdUgzAlChxt0tifglnyv
         VeN8wt2/Tg8aF/N8WR4TA8fEsW2BDaI50djBNi9EqivmWm2xYDCncEVpSYNkj+7vfRS5
         mq3q34d53W6tCTgXN71DiDhMXq+YFlBUKj6MQNDZ3GBBwQdSioy1HdAmWshtnEgtN4qq
         QhElRhbek67aloGko8TvBEgt9NZScuWn9afa8n6sONSkaBnWghXfXfUa2T/CdttpYD0E
         c+fzQ7ArIufh511upkdsObNnK6exa+B+FbD7gcFGCUPC2TW5PyfAZ5Ow957T6C9AeaX7
         ahnQ==
X-Forwarded-Encrypted: i=1; AKwUvByyRCCX274VW8TraICseaTsZwRHMpJbiuiTR2+CK1AGVCVMMCgPi+Hs4P6mxMP560XKQSaj/wV0l4CyLMjhGA==@lists.infradead.org
X-Gm-Message-State: AFuF++njaupKiTnKzmJ1bK2u7eR00db2gw9wPzZiQJloBrJdZSZWWJe+
	S/sSC6hKzpocFcZkLU5AumX4SoHbsUQjslWw4bLB+33+Qgallqpwlp/LWbnvyme5CJAFud0LCc7
	tGZQPnBJ/hUVYn4zRrT+kF9m/oh/1lRJ0Tde8F2iSdw==
X-Gm-Gg: AYBFou3pw/RgoaHE0Jr+myLHWc1ecWeGDKNLzenhbk5x0OYACsHGyeG1LfrYrh+TX2b
	wjw9cU5wGHqaXzOzBLHcyvCJ9KURITB3OkARsHNiAUBwAVsDYnGXSCWQzE31/YuNDeAfs9ELPCO
	99a2KO332rc8fj2I1l/OkSP7TrdnVd1A/A9E+L0lexQDWAzknDRKOUqdM8Wo7dJz4lPHDmSHtpB
	auGUg0mGYncnVdV9+G8zqSC11AJpvbxXzLKgns9CKRXK9o2T+60wPlcYSK2ZBU5+FjSNpbO4qnk
	ThlISphFo64hVCKLJXNLHb/yrrUF1qDigua4O1pVF5eE0frIRcovE2SzWcdYqUNhmQ==
X-Received: by 2002:a17:90b:3d46:b0:39d:f317:44cd with SMTP id
 98e67ed59e1d1-3a09860dff2mr4452158a91.14.1790332988129; Fri, 25 Sep 2026
 03:43:08 -0700 (PDT)
MIME-Version: 1.0
References: <20260921-vrr-limiter-uapi-v1-0-2fcd7d011646@collabora.com>
 <20260921-vrr-limiter-uapi-v1-6-2fcd7d011646@collabora.com> <a5bc012a-9b9e-eb2b-d67e-a91f2d93d6bf@nvidia.com>
In-Reply-To: <a5bc012a-9b9e-eb2b-d67e-a91f2d93d6bf@nvidia.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 25 Sep 2026 11:42:56 +0100
X-Gm-Features: AclHuK-I3v9LGdL8IGkTOXDiWq73AU-KwLgPcsiWlNH5IITVHFCCiS3M3P2Jw5E
Message-ID: <CAPj87rO2+oSA7KtocG-M1hqgQTJO=3Qxmg-OMC5MmOLaja_kRg@mail.gmail.com>
Subject: Re: [PATCH RFC 06/25] drm/connector: hdmi: Add VTEM EMP generation
To: Vidith Madhu <vmadhu@nvidia.com>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	"Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, Leo Li <sunpeng.li@amd.com>, 
	Daniel Stone <daniels@collabora.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Helge Deller <deller@gmx.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com, Derek Foreman <derek.foreman@collabora.com>, 
	wayland-devel@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_034310_036055_1C477AC2 
X-CRM114-Status: GOOD (  16.72  )
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

Hi Vidith,

On Fri, 25 Sept 2026 at 04:49, Vidith Madhu <vmadhu@nvidia.com> wrote:
> On Mon, 21 Sep 2026, Nicolas Frattaroli wrote:
> > +     if (!crtc_state->vrr_enabled) {
> I don't think we should use the vrr_enabled CRTC property to determine
> VRR_EN in the VTEM EMP. Transitioning the VRR mode sink-side typically causes
> blanking, and it was discussed in patch [03/25] that drivers should be
> free to handle vrr_enabled changes as a seamless switch since it only
> concerns source-side VRR state (this is how the NVIDIA driver handles it).
> Maybe it would make sense to extend the qms_enabled connector property
> introduced in this patchset to an enum of {Off, Gaming, QMS}? This would allow
> a standard path to control the VRR state on the sink, separately from
> vrr_enabled.

I remain cautious of putting this amount of policy inside the kernel
and/or left to individual IHV choices. It's relatively obvious for
NVIDIA and AMD to say 'we'll always enable FRL/VRR to smash the
maximum rate (unless it's contraindicated by USB-C bandwidth somehow)
because the power burn is inconsequential', but if you were MediaTek
or Rockchip you'd probably make a different decision. Then again, if
you were an MTK device living on AC power, maybe you'd make the same
decision. Or maybe AMD would want to make a different decision on
laptop parts because the bandwidth is noticeable then.

The point is that I don't think we should bury this down in implicit
kernel state. I'm with you on surfacing this as an explicit connector
property. Possibly a bitmask of modes the user will use? e.g. {
frr_only = 0, maybe_gaming_vrr = (1 << 0),  maybe_qms = (1 << 1), ...
}? Or perhaps just a flag for whether the link should be negotiated as
wide as possible or tight to the existing mode params?

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
