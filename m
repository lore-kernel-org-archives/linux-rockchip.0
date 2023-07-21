Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A9E3EB64DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jul 2023 16:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:Cc:To:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0J91eVcMXCSkyfRhph849eVOGoa7HRjJ7if3GBhmaeE=; b=YLbS8FA+snoly0
	aBUnVhDYpBpZlOR5OWfxjyGaV77KzF4wUiLdp1KAP1h8HDc1+8rSqe6oWVs9JtpkGF0aRmLNN4QlQ
	bkafmkWFlwtZ4M2FR5hP3kKSIUjOD9ovlQMLRfjLUJEOX1hLeLdk/pjuRB+wSUPRnfV9yETfwGXAG
	oF5UBcwdtdJ6USNLXsISzT6XcZfjr+Gi/da9W4n1zq8t1gvZXCTcAK9sYAT1K5N70Itg6LoJGYnar
	XJ+KAUtCwOymD9fsiV/s8jmlLk8AtKb+mZewdJVBI49TEoA9jre9OE3ywVJnNKzToMCl5IyWVD5hb
	+/qSGv9hozcTo2CmTQWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMsZ3-00EVmH-2O;
	Fri, 21 Jul 2023 16:01:09 +0000
Received: from mail-io1-xd2c.google.com ([2607:f8b0:4864:20::d2c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMsZ1-00EVkv-2P
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jul 2023 16:01:08 +0000
Received: by mail-io1-xd2c.google.com with SMTP id ca18e2360f4ac-78362f574c9so91015039f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 21 Jul 2023 09:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689955265; x=1690560065;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=di9/aclK3hfLnvrgH4+kVFnRPLx8Dm1glX0mwyVou0k=;
        b=H4fSiEiNraah5eON3dL1Ivzn2aBIx3ZMm2ZEAH8Otr0Ul44TMWy/SqXX1lFH9/etOP
         0d070rgURJhRnTMOBOSKlycUuR2szJc1BtYQqnrvAFETAWCggv95oQ5tk2uGcovLfiZf
         cwiuGmOLTppRTL264kI9eirAO3yYFuSKCg2awLueM933X/QIUJOOvXVT4WvacclVBvc5
         OlTc7+OBStK46YJ8z+olDahGdL5v5Y+szmsIOCk+D93d3cA+bHB/K1rJuoyKGhnt8ps+
         nGnTbyNgjdKhTBcILwUeiCFhZ0ILOKZp4sg9jx7R+K8iyV4114mRjMsI0eNZXADWK4SE
         rMnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689955265; x=1690560065;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=di9/aclK3hfLnvrgH4+kVFnRPLx8Dm1glX0mwyVou0k=;
        b=d87ckT2N2lhIbu7StmH0WNbMuwZp5Hc+DPGc8DmyvXAuAM+UL/AyxV3RZW62XEMIaS
         lhpv8AS32E3m8uOJPW1SjxvrYk/Pcxvt141yCK/3x1oGO2i/srH6RQ6L/iMtrdiXreMp
         PktnPfnHeNVE03C7yCt1dtisQ5uBbaDInYTPl4nPYSMqqvkKMOLFsiSbhwH4Eb8CddI2
         BVSIdaYjzSA/isoCFKYw6wkExwJW29NBwxrpYpREZXDwH1C9pK8W2kO++bSyvbezQ4iQ
         j0+eC7DnylBBHDEGJ0YUBgZhlri9Ha+jrkPmOHBw18X/Q5U0borjU7ed/Upp5UOII/gI
         sLnA==
X-Gm-Message-State: ABy/qLbIWr4+TVMyKarODnmJIy/3bNz5714xJfaLYyRPZ5pkK/rsw8qa
	tHAjWqJ+LuGbbS0e8K+U/Ns=
X-Google-Smtp-Source: APBJJlEXOurJ9bKqvF8rdK9oK18c1yHFpD4ACr5El7QUBXH+yXeCXUK1ScK8ZEbLNo62MFw2qapHag==
X-Received: by 2002:a6b:916:0:b0:777:8e86:7702 with SMTP id t22-20020a6b0916000000b007778e867702mr349307ioi.16.1689955265490;
        Fri, 21 Jul 2023 09:01:05 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id w2-20020a02cf82000000b0042b48e5da4bsm1059358jar.134.2023.07.21.09.01.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Jul 2023 09:01:04 -0700 (PDT)
Message-ID: <1c90db79-4a1a-d3cb-5250-f30cf6b5a90c@roeck-us.net>
Date: Fri, 21 Jul 2023 09:01:03 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Mark Brown <broonie@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Dan Carpenter <dan.carpenter@linaro.org>
References: <20230720032848.1306349-1-linux@roeck-us.net>
 <20230720032848.1306349-2-linux@roeck-us.net>
 <CGME20230721145342eucas1p12e658a54d36d985b2811e2c21f7810ee@eucas1p1.samsung.com>
 <c2bba4df-da1f-5666-89aa-28c6700575ca@samsung.com>
 <fe31bb86-40ec-4b77-9edd-eeaa61bb5e08@sirena.org.uk>
 <c9614ffb-7840-6a84-883d-ed4371d75c11@roeck-us.net>
 <205a83df-c67b-457f-a9bf-a9c6def4bb3e@sirena.org.uk>
From: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [RFC PATCH 2/2] regmap: Reject fast_io regmap configurations with
 RBTREE and MAPLE caches
In-Reply-To: <205a83df-c67b-457f-a9bf-a9c6def4bb3e@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_090107_786720_EB9F0B2D 
X-CRM114-Status: GOOD (  10.68  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 7/21/23 08:13, Mark Brown wrote:
> On Fri, Jul 21, 2023 at 08:07:28AM -0700, Guenter Roeck wrote:
>> On 7/21/23 08:03, Mark Brown wrote:
> 
>>> Actually Guenter and Dan have made the required updates to support this
>>> so the warning will be gone soon (hopefully Dan will send his patch
>>> properly shortly).
> 
>> Do you plan to revert this patch ? If not regmap_init() would still fail
>> for the affected drivers, even after my and Dan's patches have been applied.
> 
> Yeah.  You *can* use the dynamically allocating caches safely if you
> ensure that no new cache nodes are allocated during I/O.  I'd not
> realised people were actually doing this.

Ok.

Dan, let me know if you don't have time to send a proper patch.
I have one based on your suggestion prepared that I could send out
if needed.

Thanks,
Guenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
