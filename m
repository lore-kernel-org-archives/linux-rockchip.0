Return-Path: <SRS0=ULk2=FO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03E37C4361B
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Dec 2020 03:41:56 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A9E722184D
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Dec 2020 03:41:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A9E722184D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=74jO7WClfT+wY30h2RUqMoax97Nurl9sFkcrXNspGGA=; b=b+DtRW6f3hIChD8eILPVU8SGL
	cZeVMcpdDNLJy8aQBCpfs/RcZArPK4YEEzGC7DTHS90yg+cyxKBBC1uHSdIkC3yIzQlaLEYFBxl3y
	Xbjp+L/JTnPkxccDEeurfah9QPIpKA99m6iL5/SpAcZ+CsLys2fC6uNT9jIhbgi1LiwbQ9xU1mQPC
	NxGeYKNJNTHvWH8GEwKEuxUIvzJkXYffuOpS+TXS8IWWcLyGyzqk7MxxuzYVYGqoEg7giV3WGoERF
	Z7kT3aDZPXr8I9JKjVgUIZSOUd+Q2quwKibA6TEJlyXPPz1mbPtMANY+aSIk6+kxG+O8BaVYx51xF
	prQCM93KA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1knCpw-0005NI-77; Thu, 10 Dec 2020 03:41:48 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knCpe-0005Bp-Ui; Thu, 10 Dec 2020 03:41:32 +0000
Received: by mail-ot1-f67.google.com with SMTP id w3so3624524otp.13;
 Wed, 09 Dec 2020 19:41:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oHT+bpTlXmEcpnDhxLPen0vIHtK4d63RKLxr2Jz+ZqE=;
 b=q5KZTBVD3f2gM6wubsyyPKD0kLeKYgE5TvbdHOxcLGIo8SFbxS5WJ2DrGaG1Nq82e+
 PW/5sOA5wMRaff630wCSV1bDgANb/wPWJsSJlhIea58T1n0CCu2hI8tTbJm3WB7xuOAf
 re7RWMxxBwPaxvCd6xzklVI8G/uRhyMMv0KMNjUWImVjViunXdnkDq1d6uHbvGvq5POF
 XSbbuY2zldBNf5UvFY5wiUSecStEIjzYnAIsdOz2ljPqTz03P1l+Fli5uZh5dQuhHERL
 0HQyILYaRXVklqBL26j25Tj2t1+8Mofl1qBUUQ4CVLEZicQ6RUlzlBAI9gtm2/qYQEaU
 2pIw==
X-Gm-Message-State: AOAM531LmYiITTlMyfIUtM78p9EBqQVvKNfM6RuA2WTXb7WPeEWwVdgZ
 H4LB2NS1+BDuJv1poVAn/Q==
X-Google-Smtp-Source: ABdhPJzpzWnBwKKImc0q9CG0zR2ZvstScdCgUPs86Y83ZnTGScsY/VaNWpQ4XF/7YdZht+RliCvBqA==
X-Received: by 2002:a9d:7851:: with SMTP id c17mr4572752otm.255.1607571690280; 
 Wed, 09 Dec 2020 19:41:30 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h62sm802199oia.9.2020.12.09.19.41.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Dec 2020 19:41:29 -0800 (PST)
Received: (nullmailer pid 1613254 invoked by uid 1000);
 Thu, 10 Dec 2020 03:41:28 -0000
Date: Wed, 9 Dec 2020 21:41:28 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v6 1/5] dt-bindings: display: add #sound-dai-cells
 property to rockchip rk3066 hdmi
Message-ID: <20201210034128.GA1613204@robh.at.kernel.org>
References: <20201206133355.16007-1-jbx6244@gmail.com>
 <20201206133355.16007-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201206133355.16007-2-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201209_224131_118292_114DDF10 
X-CRM114-Status: GOOD (  11.74  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 lgirdwood@gmail.com, airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, hjc@rock-chips.com,
 linux-rockchip@lists.infradead.org, broonie@kernel.org, daniel@ffwll.ch,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, 06 Dec 2020 14:33:51 +0100, Johan Jonker wrote:
> '#sound-dai-cells' is required to properly interpret
> the list of DAI specified in the 'sound-dai' property.
> Add it to rockchip,rk3066-hdmi.yaml to document that the
> rk3066 HDMI TX also can be used to transmit some audio.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml    | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
