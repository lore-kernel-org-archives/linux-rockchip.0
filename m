Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,FSL_HELO_FAKE,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37836C07E96
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 11:15:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F29D8611AB
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 11:15:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F29D8611AB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hst1Zqaoc8e3ANk+suGEWxGCNrs6EKzokCvs5PUAgeY=; b=i2uiohCKF40HZW
	/TfPWvuQeFN+xjKPO3pZwDwXbKtD95Nei5Xp5TYT//QEc2XIk6q8H3UhGXUUMARCRpKUN6gX6+10Q
	h6wJ0hbSM/52Wm0Rm5HwgL587YWDYAYs1Q6jzS1Sp6g9LW4l7W4xMGNzdGThWEQXfdlVCTvIZ/IK1
	LIlfPqHdGwoRvwT9TGNKQHSLe3HvO+UQfQn38Tzlfqnch6m/L4xt81ZEqV9EAqeO/J2ei1IGJ4aaE
	e4a9RBHkz2fS4inUiIAci1Hot27eo7R8V7f1RpyJzrx2BwIRxjgG7hn4hwsKn5enJDkM90aagOh/1
	8xVsTzDyfbpz/UXo0vgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3zKz-000aE7-5O; Thu, 15 Jul 2021 11:15:29 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3zKk-000a7y-0e
 for linux-rockchip@lists.infradead.org; Thu, 15 Jul 2021 11:15:15 +0000
Received: by mail-wm1-x32b.google.com with SMTP id g12so3479580wme.2
 for <linux-rockchip@lists.infradead.org>; Thu, 15 Jul 2021 04:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=E8lXG5uhDpqbhPe2W0SRgjhQ8NVXkyqNHQoMYkbY1Us=;
 b=lmoBw7yjPz3iMrmJbpE2rot8f6kj94tx10EOMZ1TtSITYlxrhHsiveAxNN+3mBXKgq
 8e1JfDDDcMoIVMDbZQJr9GqiTpDcOXfO3u+GAZ8APM6W1VYXP9uwMD/gtUbwDAi9yCgr
 VSrLAh9AQ5OEJVPtsqAgnYliOm8k6j7n8FHGH7YZYQFGwneOHVut/nY9gg5oEuKc5sV4
 snmepxiAzAmftGl1mZAkXVjIyt6K8Ufr7wWWRqOQOoYquEjl6ZIxJw7YTh7c6qz2ZkfM
 9G2H0zX3wo9gJVCkcSnGs3arYSbLOzf7mNnQbXN1smmZKDOpmR1m4PV3dqSS84Kr9hc2
 WnqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=E8lXG5uhDpqbhPe2W0SRgjhQ8NVXkyqNHQoMYkbY1Us=;
 b=MuI2yczSBXLz+T2635ronhXuA4KUTyjhaRf88eXaswOTtE9bLQ0q00WP6WiULnKFUe
 n/zHGvBP+t89aTrHFGjpyDUrnbpDeOUBzK39+K/6yStmkYqvaHYhq80RJo4PQFTEUyV4
 IUgDy0nZHykz4qPfx9Oj58h8H4ltR4Xt/Zmrbs38OCssGvrbphrHNrgjrSAHoMLGBt43
 KXAz59eoFb55of4RdCffqBcCmNYp0TNNidEaNZy9/5YQgNCk6cpoQMBQ2KOkudlB4jV2
 RCImry5AV15LrxSSA+A/iYoAC/+m5kIMQKRvl+2zqlX/ENS4w5yXmITL79ZPzRPjDIww
 /vsA==
X-Gm-Message-State: AOAM533TajOOEK/mzr+vMmZVKojTm5N0S+2RG0aHkRfVMdN33NNe9VJz
 crOSOJQhzeR+2PvldB0Y1lOciA==
X-Google-Smtp-Source: ABdhPJxg23ChCi+hZ3oEn7SX86+gixEJRkb6AlTQocoioEXM/XtfqvhsFlu32Rae2qQ9lqkaaCU3og==
X-Received: by 2002:a1c:7201:: with SMTP id n1mr10185161wmc.4.1626347712371;
 Thu, 15 Jul 2021 04:15:12 -0700 (PDT)
Received: from google.com ([109.180.115.218])
 by smtp.gmail.com with ESMTPSA id v11sm5920549wrs.4.2021.07.15.04.15.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jul 2021 04:15:11 -0700 (PDT)
Date: Thu, 15 Jul 2021 12:15:09 +0100
From: Lee Jones <lee.jones@linaro.org>
To: cl@rock-chips.com
Cc: heiko@sntech.de, robh+dt@kernel.org, jbx6244@gmail.com,
 zhangqing@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/3] dt-binding: mfd: syscon: add rk3568 QoS register
 compatible
Message-ID: <YPAYvZjHieZOscMy@google.com>
References: <20210624114719.1685-1-cl@rock-chips.com>
 <20210624114719.1685-3-cl@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210624114719.1685-3-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_041514_111438_540BC06F 
X-CRM114-Status: UNSURE (   9.12  )
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

T24gVGh1LCAyNCBKdW4gMjAyMSwgY2xAcm9jay1jaGlwcy5jb20gd3JvdGU6Cgo+IEZyb206IExp
YW5nIENoZW4gPGNsQHJvY2stY2hpcHMuY29tPgo+IAo+IERvY3VtZW50IHJrMzU2OCBjb21wYXRp
YmxlIGZvciBRb1MgcmVnaXN0ZXJzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IExpYW5nIENoZW4gPGNs
QHJvY2stY2hpcHMuY29tPgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbWZkL3N5c2Nvbi55YW1sIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KQoKQXBwbGllZCwgdGhhbmtzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVj
aG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3Vy
Y2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRl
ciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
