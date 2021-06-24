Return-Path: <SRS0=8D6r=LS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74EBAC49EA6
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 19:01:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 39737613C3
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 19:01:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 39737613C3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmRLXUM5TneIF8VPj9+8FQ0J/fg99jrthsEAqx/RFvs=; b=kmfUwYtXI05yDj
	Nh3p2381/ovIC7Rq+wadq7Rdt8UlKy1o1XSN1QRrLAbb6cXJCW8NlE7k31zGBBnhQ6rxqAiesYIDT
	y5uHNxJBgovbZHZFhJrb5vjF6oKtP9ZM+3FNnmYKX5CQbRBm5PAKNtkErEaYrUUnYH2wsTD5q1kof
	QVDWkjMX9MbZwwHSqKbKaaFHiRaMtl4jdro3tywCpPhQp0l98UbX91IBFMx0BQU3z8hmJ84kkH+0W
	OKIPMOg06FTHMJhvVnL2dCvHCf00XHaf0ouLJcj9kvLqhKMsZ+iqz0otcUV+Lm78t/lvE3OJhPwJ8
	Q5vkAvqLae4jk/cSdZcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwUb3-00FwZx-Gb; Thu, 24 Jun 2021 19:01:05 +0000
Received: from mail-io1-f48.google.com ([209.85.166.48])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwUao-00FwV8-GM; Thu, 24 Jun 2021 19:00:53 +0000
Received: by mail-io1-f48.google.com with SMTP id h2so9547760iob.11;
 Thu, 24 Jun 2021 12:00:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ZHZcSl+Guo3A0OrRHLgNwuNNClqAUIEzAWDeV6zDBmk=;
 b=jLdVUoNM4pASp0o038HxhLXcP6KdNU+Vwa/sXyoTZBmC2ggK1mfyrSufrWUYQNZwjb
 9l7gHIJOHtHCvrZlMfhxhNyD5iuYaoTjF3we2la92u2lzPq0gOOzcdCxTDx/4l002pL2
 KlJXCoac3mFmzDaxclGDXMZmFhKEfZJpWT2W4dl33KLpAXMkKu5WfLATPQKaPOG40jXc
 FTic2vn1H3JxWn7f4hVVnEjqOlcryMGuQ0e9XRbQjSM3Dk78DenkE/kjNfmKM/Km55Fg
 rDt12TH+JabBV8+8lzh1h2vDwlX1v1kD8GZ5sysGPHsT3fpXT9Ah1LRBhMoU9TBQbq4+
 pTzQ==
X-Gm-Message-State: AOAM530ITXa2hHSrO4+8i3HMvTLCmmr1bdFNtH7IpuZJjeJGAPIAwVAU
 u0eKTsH8oPfBSPDCu2L+Zg==
X-Google-Smtp-Source: ABdhPJwptZl0dxHJRiEiwRYoF2dskkv7QQG/ROjfj2h9FwMHBWV0BmFqhNAaIwFQyYw19Rf80IV0Kg==
X-Received: by 2002:a6b:d001:: with SMTP id x1mr5146231ioa.171.1624561246872; 
 Thu, 24 Jun 2021 12:00:46 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id 17sm1418742iog.20.2021.06.24.12.00.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Jun 2021 12:00:45 -0700 (PDT)
Received: (nullmailer pid 1812831 invoked by uid 1000);
 Thu, 24 Jun 2021 19:00:41 -0000
Date: Thu, 24 Jun 2021 13:00:41 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?N=EDcolas_F=2E_R=2E_A=2E?= Prado <nfraprado@collabora.com>
Cc: linux-kernel@vger.kernel.org, kernel@collabora.com,
 Xing Zheng <zhengxing@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-rockchip@lists.infradead.org, Stephen Boyd <sboyd@kernel.org>,
 linux-clk@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: clk: Convert rockchip,rk3399-cru to DT schema
Message-ID: <20210624190041.GA1812802@robh.at.kernel.org>
References: <20210610175613.167601-1-nfraprado@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210610175613.167601-1-nfraprado@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_120050_590749_04C7EDC3 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 10 Jun 2021 14:56:13 -0300, N=EDcolas F. R. A. Prado wrote:
> Convert the rockchip,rk3399-cru binding to DT schema format.
> Tested with
> ARCH=3Darm64 make dt_binding_check DT_SCHEMA_FILES=3DDocumentation/device=
tree/bindings/clock/rockchip,rk3399-cru.yaml
> ARCH=3Darm64 make dtbs_check DT_SCHEMA_FILES=3DDocumentation/devicetree/b=
indings/clock/rockchip,rk3399-cru.yaml
> =

> Signed-off-by: N=EDcolas F. R. A. Prado <nfraprado@collabora.com>
> ---
> =

> One caveat is that this node expects certain external clocks, mainly 'xin=
24m'.
> =


Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
