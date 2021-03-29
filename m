Return-Path: <SRS0=mUlv=I3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3B67C433C1
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Mar 2021 18:24:47 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2FFE56191F
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Mar 2021 18:24:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2FFE56191F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+U+WWv4rONEyeS+s89t4nR9YZ19K37E6O4cPRQim8xI=; b=ovuMbDNXLr8hv1IdrQoJZFdf8
	MydWLjm8O5yTPx+8r4lT9jVPpFbYFexghpUEkKAYY1sMcx1k7rwFfuTPobEFPzlCmM6setfkByvML
	T8xar3P+tnzUl8XQwHTq1pkp5K18bHLqX+ND0vvrtaJ/yrO3R9OYV0n9YLD2xjos9/w5n/z1R8q8L
	qk1/9khKCRjePaZtLukgzg0l67ldJxWkG+BK/0B0yvHMEUhkZP8rPiq2cNAeylGB1JnZPtlo8Xhbg
	QaIqN/Y0YSfVTVGzV7LjAZsWnC/7uXCAqBIuGD4KGCeD5V7mc1qJu8kNzjrxBCqS8NBPNof34cSdK
	TStNFUNSA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lQwZ7-0012ft-3p; Mon, 29 Mar 2021 18:24:41 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQpE8-000aUw-5D
 for linux-rockchip@lists.infradead.org; Mon, 29 Mar 2021 10:34:33 +0000
Received: by mail-wr1-x430.google.com with SMTP id v4so12271905wrp.13
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Mar 2021 03:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=gKqOr9BTXct/tRsLbZ99P7dlk5cf6Eud2sZybPk3YFo=;
 b=kaPRrDWVtSv6ShmZ7l0uPXzHIzC5TB8pxZhs6iM8eklwxyqkk3hSXri0EW3sEsdSGZ
 RYCosMqpvYPmWWK3Olvp7jvfSIGhDkPsQKuk7lJkUEASFm3Wq1vve2XYqAesVqVKWacb
 IM0SwInTrz2+8mBitRL5PfkWeFKG2RijXhy57LrcyzeHwtdEoCTCgFdfENO55ziqjP+V
 vNrESlDG8snaSn2HAQB/eOCuWt2JqREsKn+UGUGZxecGRwCsrUsU7QRUiugwtTmWzPtS
 2SEGvscbjiki2IqS3XojMj1mgyecW99Fz8h5nRRNOnkmecGF6OJSGCOtapM9VIC0/Sgb
 I1mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=gKqOr9BTXct/tRsLbZ99P7dlk5cf6Eud2sZybPk3YFo=;
 b=D2sSTXmU/ccX19mixZ7RDHNihRrKDe2dMAOKN9wR4AtthFLa17fIrzO1KBx6LY/d8/
 wWY4UjOoDIPBcmCKwhgLm/jl2YdRlew5UCu2/AFn9wlSzUs+p8b+HgwGbc0ocGP6MmsO
 GmKxNRCBZ3RR47cbno6SGj2NMxl60oVslDYJyR7fCOadBgOO/2zEy7Ywu9L3mwu+wSzk
 B8/8GwHf98T0uVcqJZ0HzCJzmIeqUVBAWdV3UfhHsL81rlwB2SSrLSkZ5tcKBwmXSJbo
 mvm0AxnZ911MW418Hq3NPbz9tnNWpELX7WfHNSpwcPFRjByDisU2s9ewxKjRvjd3zOE1
 uWFQ==
X-Gm-Message-State: AOAM532Seus2OhyBf50Fi3HGKrr0nvQdL4wzden9JTWAUREH1Xc6uAOv
 SOLyFRo1+aistq3WZStE2lyk7aE2WjIRTw==
X-Google-Smtp-Source: ABdhPJzWzZhMRMPnCKckhJQXhaq4Dq6bmLUHi3xHIiorsZ6H00ywKErdNka2kYZzNUgvcZShJCKXEg==
X-Received: by 2002:a05:6000:1149:: with SMTP id
 d9mr26758779wrx.347.1617004015168; 
 Mon, 29 Mar 2021 00:46:55 -0700 (PDT)
Received: from dell ([91.110.221.217])
 by smtp.gmail.com with ESMTPSA id r206sm18457285wma.46.2021.03.29.00.46.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Mar 2021 00:46:54 -0700 (PDT)
Date: Mon, 29 Mar 2021 08:46:50 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl,
 emil.l.velikov@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org,
 kernel@collabora.com, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v7 01/13] dt-bindings: mfd: Add 'nxp,imx8mq-vpu-ctrl' to
 syscon list
Message-ID: <20210329074650.GC2916463@dell>
References: <20210329065743.11961-1-benjamin.gaignard@collabora.com>
 <20210329065743.11961-2-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210329065743.11961-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210329_113432_347292_1CDD4037 
X-CRM114-Status: UNSURE (   9.86  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCAyOSBNYXIgMjAyMSwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cgo+IEFkZCAnbnhw
LGlteDhtcS12cHUtY3RybCcgaW4gdGhlIGxpc3Qgb2YgcG9zc2libGUgc3lzY29uLgo+IEl0IHdp
bGwgdXNlZCB0byBhY2Nlc3MgdG8gdGhlIFZQVSBjb250cm9sIHJlZ2lzdGVycy4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3Jh
LmNvbT4KPiBBY2tlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiAtLS0KPiB2
ZXJzaW9uIDc6Cj4gIC0gQWRkIFJvYiBhY2sKPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL21mZC9zeXNjb24ueWFtbCB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKykKCkFja2VkLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgoKLS0gCkxl
ZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2Vy
dmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZv
bGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
