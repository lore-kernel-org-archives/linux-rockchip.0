Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43C8FC433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 20:29:08 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E383261287
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 20:29:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E383261287
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EPsk0i86y7D+DZ3ofKLoGNH+kx2MA3JDDPyW/xhvU5o=; b=ZquUYTzFV4wZQqm6AHD0Pz0jz
	+WhjJ7vIoHWSVXA833bkrG8uJk+WkwctKL3fpBRSctARQSx9JO8wpAGPwkigl109xzSw0G4pGPyw1
	v/urMnIAJywMldSVhlfCLi1mckrg930bpwjPb2/y5SEEm2BA5oa5VlSQXiuSySPRDPwQ6dFGFoArY
	Ivejk50qYHCqGDC/kqQ+UwFs4bhPY3HkisSK7oAYhUhTGIpuR9oE6iIP9ay0ljAbZFQkVpigl48lZ
	sfTz/4pYMgojDOSEmuSrIKYp0ZTSgcgDk2IGjdGVE+mjg9oGuzI8arSm1TAam8lCI5it98+pu7AZq
	2HrQ8+QmQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW3B6-007d8W-S2; Mon, 12 Apr 2021 20:29:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW3B3-007d6Z-9N
 for linux-rockchip@desiato.infradead.org; Mon, 12 Apr 2021 20:28:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=gmmbo3TN+g8o4ISTYa9CAt/6v37cqafsVydyODiNQ7o=; b=JRy2V8oExbUZ00Z1+1F6nAt4mF
 KvJ+t5igEaNvOnL/401dj4PZ9/uJ26naTxEvXLFb8Yu1oiDXiTOPdxKdAx8aR9nGtl47iJH5FFxUq
 1Y8LBGKh9rp/XoS3TCFBbvwy4v/66Qj1hsyxkB+gGdqdiN3xy+6NjT5uNBnfWNEuHzaaFM1qL1Zoh
 LrrxvPK4W1uPCVbD4xlvL05sJa+oDBNHF2eqYrERYVo8HLw9Yc2eBoKLmdcqr8XA30x7oh7nggAeQ
 wAeh0jrVARzSzFrtGqiFqyB4t6nhEokMgICcDdDZwt+vMzST+7dD+QvF/QgDlN7zoeEO8ujOqZHDW
 OxFcZjaQ==;
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW3Az-006XUm-MI
 for linux-rockchip@lists.infradead.org; Mon, 12 Apr 2021 20:28:54 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 65-20020a9d03470000b02902808b4aec6dso9323026otv.6
 for <linux-rockchip@lists.infradead.org>; Mon, 12 Apr 2021 13:28:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gmmbo3TN+g8o4ISTYa9CAt/6v37cqafsVydyODiNQ7o=;
 b=qDT7YNwU8gWg1Q/Anhe9/RpPMIwoezfxH3+xynrotf1fE/lK2lDb6gPntA0UAsneDJ
 8blcCxEe4eNSSKA5tk3JrXdLKW+U7gSlLD1ygcu9YX+h6VQbI16TPpFKBmklnSMHRm6k
 0GngDQJYreJATLcDZebtuXUn22FumkLejGISpvwMvXY/ah66YWCsUxyqlSElBne3lRwy
 u9SA2zPuM4+lCzCiyy4Z9VR+RPkZbbLaJP9+eLdFn8s0LZzXqkcW9TQMHMwP61ogEpPd
 9EGky9ryl7OM5o7xsspF+T90VtIGqYpnvW3OuyR5SY9mJf7wjvLOuLPnCHYoU2A9X7nV
 0OFA==
X-Gm-Message-State: AOAM532tOInD86T4B1i2n/iQwkK9ei3K1NhSs5kggmuKSxuRnXguACIH
 eP2jtpDkLKTo7EuavQJskQ==
X-Google-Smtp-Source: ABdhPJxtch6LM4lIaaqORQ8JDSlz4d/MX0eMA45yfzohL4ty+Pm27CDjlNgIdUuhG6N65/W1aj4S3w==
X-Received: by 2002:a9d:7a53:: with SMTP id z19mr1905158otm.40.1618259331867; 
 Mon, 12 Apr 2021 13:28:51 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p3sm2406087oif.53.2021.04.12.13.28.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Apr 2021 13:28:50 -0700 (PDT)
Received: (nullmailer pid 120437 invoked by uid 1000);
 Mon, 12 Apr 2021 20:28:49 -0000
Date: Mon, 12 Apr 2021 15:28:49 -0500
From: Rob Herring <robh@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
Subject: Re: [PATCH] dt-bindings: pinctrl: rockchip: add RK3568 SoC support
Message-ID: <20210412202849.GA120386@robh.at.kernel.org>
References: <20210410204500.18091-1-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210410204500.18091-1-ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_132853_744564_8427A29A 
X-CRM114-Status: UNSURE (   9.78  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, 10 Apr 2021 17:45:00 -0300, Ezequiel Garcia wrote:
> Add RK3568/RK3566 SoC support to pinctrl.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
