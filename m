Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BB3BC021A4
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Feb 2025 09:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yxDfCvmeI8xowQEDkAPLRoSKSbyRktoy60aXvJq22rM=; b=pVtSOfStruwn3p
	9qkph/ud61Gf1ELDS/8rvbqrIf45G9rVzSjU0MXwlJmxIGtMi1G8cp9iwvJoNh/L8KeX5uaFZKRcx
	e7k0Z/e4sTt9T3jn5TaxqNRsNpnfprOvhb2Qb3PjTVztszRWQekADgGZNf9gevWj11Hqz4KLAyWSr
	WVZGaxPSFG1WF1OlpsekFN/t0bpAg7Q3X4Ii88bCy9IjuA26DHCEovix8wBmZTxt7lIIEn0AiVO2E
	58eoPaCqLFxSwZWY8RmZ8pwyQQjJIWgX3km/IhFIe+/H7noqcPA50o9SvGfQ3rgYYM6Qx4/BYX7Av
	+QoeKpONjOj67k708VHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjxu1-000000041Ww-15th;
	Mon, 17 Feb 2025 09:59:01 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjxoV-000000040I5-3GsD
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Feb 2025 09:53:20 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-439350f1a0bso24395295e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Feb 2025 01:53:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739785998; x=1740390798; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BPsuvIVCjk9dgW5qk+ZZy8wtpQYYoP8bQTH9T/Us5UE=;
        b=sC7XF7YpJcgHBXmqf4IdBeKd9bkfhGybppxFcvdPjualDtQq1QqXOdzqngFCGn31Fx
         lotDVMg2MTQ2YEZ0Bjxa8tmkM8lHjMHWCyYvo8oB5LfjfyptNWDLkG3kG9Bo2StfqK+U
         KJvxhArWF8KknYq+gQiAFL5CoMQufy/2dYCjSNR38zddKBEY+qcFf0hlxdenU/EWg9jM
         ggncwH6WCFfrur+dVN1rs7psUA4rPqkY8VSSWQj1L2MTJxuyHtiBAYy0EcUEsNF9+5Wp
         Bmldm8k0vlIdUuY785LnpTr3AF/PVKYOiUoKp286xmuv1/euLGFenj6K+ZkqLWHj83/S
         qZJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739785998; x=1740390798;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BPsuvIVCjk9dgW5qk+ZZy8wtpQYYoP8bQTH9T/Us5UE=;
        b=JxfUR2wf2ldekiFcNYJ9wUkfvhyXGhz3uorDpbD/8OKYT/m1bjtblUs05q+yolur7J
         eNo89xeNXYX6V69X17fkh9TtdZFHTUoWYjsMY3+wzILVZczMA7aeREkuWU4bw9hd5tQ6
         mk3uiqffQKw0QtnLgHAWFfiNmwBYMbVpdKOtCdxTBLC3d3UjbhoFfWFdhBMbA8+PkaXR
         FQDe2hgiMBAVAlfiB3ubAIkFKiWAXIiNajfsT4iyrk4cVmWdYcU3Nri5gQ3h30G5NIjO
         qkPMqiExvdf/H+eImefpyYZMmiH5xR1I3EC6Ggy96uqqjUPmNC/iNu/wMPLq+xbGIU+V
         n9Ow==
X-Forwarded-Encrypted: i=1; AJvYcCXfCeZHpZkRY26nr3KhwGvwMwLcibFkh3sEeeR4U1VsQokDLGGgKBNEDt/9KdbiWDAez259Q78o5s7K2dqMoQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7NqsxubHzo76DYuwNjs4/UdQxFBwfaZzOC9R0JjioRz1aiFqN
	E273nBFReNwQ0O4PV8lPKso2AYVPfltcKYQc2s2c4VGsR39Lk8bSginGpnOP35w=
X-Gm-Gg: ASbGncscf0zDNBdzHwHDZ1lyU5XFZ+HnAUbxKFcj6mZO1Mdq7akqkmf6zWNY6dyk+l+
	IlxgOvpsFQYIMKh04AE+IAKov4raj4xxhNL6oIj4tN2eRH+cs3caG044jTRFI0wfmdHvO2Njv9O
	IIPvVRt1OWn65KXybPx0aZnCwbOZc49Aq90Sg1emYjOuXjJDBMKUKNSdCIQZx0aQP6mPTCLY33E
	zpeu0PZGRXo58E82bCaR4fp69ojF1/BbcXJtFCPk7bWjJr1Fk5o7/NZb3NQ0LU/U25S2uKIXjGA
	DWge6W4HwJJ2+RW2vobDAxlbvWAUQH8hOA==
X-Google-Smtp-Source: AGHT+IEOYIa8ffLFYb2JZ8gSPjsLQ0t83+FYPxRHrdauemZg6o916N1LhDz8exoVJs4omLbErDeTDw==
X-Received: by 2002:a05:600c:3012:b0:439:8490:d1e5 with SMTP id 5b1f17b1804b1-4398490d2b2mr22061025e9.4.1739785997586;
        Mon, 17 Feb 2025 01:53:17 -0800 (PST)
Received: from [192.168.68.111] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4398a64febasm9743935e9.1.2025.02.17.01.53.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 01:53:17 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, detlev.casanova@collabora.com, 
 sebastian.reichel@collabora.com
In-Reply-To: <20250210224510.1194963-1-heiko@sntech.de>
References: <20250210224510.1194963-1-heiko@sntech.de>
Subject: Re: (subset) [PATCH RESEND v2 0/6] RK3576 OTP support
Message-Id: <173978599692.25901.15315285566342669137.b4-ty@linaro.org>
Date: Mon, 17 Feb 2025 09:53:16 +0000
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_015319_810676_B03F1C63 
X-CRM114-Status: UNSURE (   8.80  )
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


On Mon, 10 Feb 2025 23:45:04 +0100, Heiko Stuebner wrote:
> This enables OTP support in the nvmem driver for rk3576.
> 
> I expect to pick the clock patch (patch1) and the arm64-dts patch (patch6)
> myself, after the nvmem-driver and -binding patches have been applied
> (patches 2-5).
> 
> But kept them together for people wanting to try this series.
> 
> [...]

Applied, thanks!

[1/6] clk: rockchip: rk3576: define clk_otp_phy_g
      commit: 3e081aa132bbefe31ac95dd6dfc8d787ffa83d0b
[2/6] nvmem: rockchip-otp: Move read-offset into variant-data
      commit: 024e21343f3cbcde0343473fcaf094d2c19cc7bf
[3/6] dt-bindings: nvmem: rockchip,otp: add missing limits for clock-names
      commit: a1bf00100d06ad69286154a63e548ae6f6ce8539
[4/6] dt-bindings: nvmem: rockchip,otp: Add compatible for RK3576
      commit: 8c94337ebbfb840944574f82df0cbe35930d8df8
[5/6] nvmem: rockchip-otp: add rk3576 variant data
      commit: c5ebefe4e20d9fd99ae49cbfd1c18632cf338fa5

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
