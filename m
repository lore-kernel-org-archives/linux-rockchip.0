Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C51FC61DA4
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Feb 2023 21:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DSDFb7kTMq7cy5M0NL9mVXkBmcb5CrZblJNxqnRa1+k=; b=EWzmSa5WB7Utte
	dgiazUsp+LR7MNA/iwdG8+/DmcdMuqaGdvA0+BZSp5bXSpnNd2o/bhgjshHW7hpscewpy/yPHXxDE
	j1G3pLlhfEdIagQSPkC4zuTe1/AAlBY+XebyDtOFizWsbHYZ703GZ8Jml+2ITP9TNF0GwHXNp1SVH
	iH0KRUWhN3qMf4DdQ8j2oMOer3R3I0eV2sepHMf8WuYPj/O5oFmAueXPCOe0QGR2M0RTMziieOYlH
	cofajlyEH6DNVaE6nz9sipRSIKfb6bIou/2nuqh+fUiG62BA0zZ7JQRCLZH9BopCtH9TfkZ+PoqP1
	jd7mH3XUL7uhApAI+udw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNhRj-00HGQR-Ni; Thu, 02 Feb 2023 21:48:43 +0000
Received: from mail-oi1-f175.google.com ([209.85.167.175])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNhRh-00HGPd-8I; Thu, 02 Feb 2023 21:48:42 +0000
Received: by mail-oi1-f175.google.com with SMTP id o66so2622503oia.6;
        Thu, 02 Feb 2023 13:48:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UXW7/lUbSjpYWVlJlGqM54KI3OSQHsjjhBbib+nvF1g=;
        b=JOdTsoAnxF7Kmoif5IJgJXir5Y3MHtY2rjyX7AzItTUwGxHu/CT2Q0M406up0qaJXP
         I3VvjwJmXqS7Dfvii/EZKZBspA3OtI30McN3/10aIQgyG6vr/KMByV2pc7KxJ/JXW4cB
         Nhw3HgMEyxXFB9Vvr8yV/me05QPa6GFjU+HY++Jq+XPhJf6VhEhpX1YsylgmszvNQMuB
         9hE1zlkedjw3G80nZl3cVjlPTcgcRlHTv5k1jVdDyubSxEwho94A1C1JHTeWYQZzhUj0
         46Z1W8RhwwpWVKykt5Yhxy+hPccg6xB9Ml3lmwSy7tNlXldQpZHNGUYTiT6hQrSiVta2
         gZLg==
X-Gm-Message-State: AO0yUKWFZUBG4hKhTjMi3ViN2w0NGCLToeWkcjIa0lOVk8AapbOdJmGR
	SZoo/1OAEuT3fNfVcYyTYQ==
X-Google-Smtp-Source: AK7set990Xxf5sx8jmyGReXFqOd7t3qi2d4ril4HjTaHWa86PG/UDSm2/3qj0/UOtZb8eORu+AVCUA==
X-Received: by 2002:a05:6808:20a:b0:35e:910d:10e6 with SMTP id l10-20020a056808020a00b0035e910d10e6mr3670327oie.9.1675374519648;
        Thu, 02 Feb 2023 13:48:39 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r24-20020a0568080ab800b003783caeaf61sm169035oij.13.2023.02.02.13.48.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 13:48:39 -0800 (PST)
Received: (nullmailer pid 2780551 invoked by uid 1000);
	Thu, 02 Feb 2023 21:48:38 -0000
Date: Thu, 2 Feb 2023 15:48:38 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-rockchip@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, gregkh@linuxfoundation.org, devicetree@vger.kernel.org, linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] dt-bindings: usb: rockchip,dwc3: update inno usb2 phy
 binding name
Message-ID: <167537451786.2780496.5603789940127974377.robh@kernel.org>
References: <f8747552-d23b-c4cd-cb17-5033fb7f8eb6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f8747552-d23b-c4cd-cb17-5033fb7f8eb6@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_134841_309728_9B25D841 
X-CRM114-Status: GOOD (  11.11  )
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


On Thu, 02 Feb 2023 14:59:35 +0100, Johan Jonker wrote:
> The binding for the inno usb2 phy was given a name in more a common format,
> so update the reference in rockchip,dwc3.yaml as well.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
