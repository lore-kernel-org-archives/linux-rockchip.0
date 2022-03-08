Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E962DC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 00:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSD0jLwk1rH8et7ZWtmqF/ET1HtBDrpABxwujcWwjeY=; b=3Vn+gj0+Zt5y6x
	ejUM/p+KCLVu0cMMBB6hK7I6h23asxww5jjmNS7UTNOT4MgMjPGwnMOMsQRErhgzz99vY4ZhAeCWQ
	+i0uKZzWaES9x8SC9rsls1q7Mfwd6yBOBaHS3CXLEihwVyORz3b6qf7o5PfhuM5ER3U3CD+1IwwRB
	4Oouo155QUSz14Zny1KSbURh5VK/xeNFg2FGW2O9qKUGHjZ5SPIW0nd6LKzJujFecE+LwnWbsTDsa
	FUBNI+ZUiGvIVyNhJxuD6/9l1LjdMybo2ygg04esfIdeOfD0Xw3TI1rdQGkL9i8UHHDzJBOUzIkI5
	HrQ0FxdwVSV+ObBdMDRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRO5t-002EK8-50; Tue, 08 Mar 2022 00:52:53 +0000
Received: from mail-oo1-f41.google.com ([209.85.161.41])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRO5q-002EJO-QT; Tue, 08 Mar 2022 00:52:51 +0000
Received: by mail-oo1-f41.google.com with SMTP id
 x26-20020a4a9b9a000000b003211029e80fso3596724ooj.5; 
 Mon, 07 Mar 2022 16:52:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Sd+Yvw7691O5dkoC55ZXaEZXMBAfmesOquSTaxPr6kY=;
 b=RhOofOTHkvdtIHhLXUQOfR7jXc4ymJ0J+ngvWzjaLo4cAX9pxSkvJd8g7PwP2iZLU5
 MtbMfQZWg5GRbdx/mfkm5TVEy4Rc7hx0awq6MuelXDBtnzq9MZtBj5r8TPHbOi5SbS9u
 KtG6xrwmjHP0Ue8dVOd5pzeICAPvTL09bl09yY+dbBdfZ19GEVwyu5v39FwEcXiBrL45
 8nV2jN2IMuM+hWfydSn0Ybz4u7opwyURwf7g+mlY9npfYLnNxX+Hg0DqsQvrh691t68x
 MuSzErGCEy+hf96i3eshju49wOFzLgPiJaS5lAC/eAmiBUwXa9j4c7ccG6xeXZr06no4
 /Ywg==
X-Gm-Message-State: AOAM532dtX3pnZge8ZFGOHcIe188o2YsdYPW75PQqJlFYWn/C5P6zf6R
 +ZPsPGLEsIap1FSH4yE+MNWXu0Cahw==
X-Google-Smtp-Source: ABdhPJyrPMIEYs2Re1cHCaK70TNE5OWYk3dnU6R6oQyemNgrc5HfUeAElgm60shCfY0mfNEIckSurQ==
X-Received: by 2002:a05:6870:8310:b0:d3:8767:a832 with SMTP id
 p16-20020a056870831000b000d38767a832mr941761oae.113.1646700769882; 
 Mon, 07 Mar 2022 16:52:49 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 c17-20020a056830001100b005b236450790sm2086502otp.77.2022.03.07.16.52.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Mar 2022 16:52:49 -0800 (PST)
Received: (nullmailer pid 3598816 invoked by uid 1000);
 Tue, 08 Mar 2022 00:52:47 -0000
Date: Mon, 7 Mar 2022 18:52:47 -0600
From: Rob Herring <robh@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: john@metanate.com, linux-crypto@vger.kernel.org, heiko@sntech.de,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 robh+dt@kernel.org, herbert@gondor.apana.org.au
Subject: Re: [PATCH v2 17/18] dt-bindings: crypto: convert rockchip-crypto to
 yaml
Message-ID: <Yiao36rJVmPw/yGL@robh.at.kernel.org>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
 <20220302211113.4003816-18-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220302211113.4003816-18-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_165250_887011_2F3C2E9D 
X-CRM114-Status: UNSURE (   9.57  )
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

On Wed, 02 Mar 2022 21:11:12 +0000, Corentin Labbe wrote:
> convert rockchip-crypto to yaml
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../crypto/rockchip,rk3288-crypto.yaml        | 64 +++++++++++++++++++
>  .../bindings/crypto/rockchip-crypto.txt       | 28 --------
>  2 files changed, 64 insertions(+), 28 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
>  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
