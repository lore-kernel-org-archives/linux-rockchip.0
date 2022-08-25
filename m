Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49702ECAAA2
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Aug 2022 21:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZKuBPija9BXCODw4OygZ52EVqsZlKFOcVybuoFRYA38=; b=L4QGmgPZxi3xR8
	S2eB6MShRujqgaCtxa1n1jG6S0f0L7Cjj5n3MIORBM1DcDt4/Dgjo7heBc3FhQ5oF8JpWJvz0yUdI
	V1Ab/wLuhblcWP+zi2dB8dnxZLM+XnHH9CWS3aKy1PnLps16PG2o+bNFa1pzNSphXF6iJWUgMg9NF
	G/j9qOVEjtloyJUOfvD3wwwMCPJoNEVkV0vjGW8SQUkoQVdIw/XQgId1/FKDWECDmTPP/fVHY/gqw
	4NJcY7lsaTPs8uELxnZBpDz64o7B4II2fgRqsnNKcHHSfuzYWX2pm4g1oDEZRkT5tDgWEWRsEXRb5
	OYAUiBl12z5xC4iWgkdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRKVh-003USh-Lh; Thu, 25 Aug 2022 21:35:33 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRKVf-003UQs-BZ
	for linux-rockchip@lists.infradead.org; Thu, 25 Aug 2022 21:35:32 +0000
Received: by mail-ej1-x631.google.com with SMTP id sd33so20654132ejc.8
        for <linux-rockchip@lists.infradead.org>; Thu, 25 Aug 2022 14:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc;
        bh=ayYJXfoaVqamX/0fPfe8WakX1FqMZovXKfWsEclLPw4=;
        b=fCyhqjQWnUSgXCng/Uyl3oZeG4HO2vdl5ri2Vb4UQA6XgraFpxMsOFIK8iAUXMSt+z
         ILAdWcD0y4dkItdcMRAWTIkdokMI8VjAbmV2MEFAMsvKC4ktSum52WiAj4WMBo6MOmqI
         rFf7nwvrrRnfLkuCdy2G/KWXPrMQmUxiQfmDkVyyFCvAyDAGgVDd1RXdNtFPiD6f4kDa
         zLHsAPRknak8oL7SYZXSsw0eNNnKhZ6UYQvMpRW+uZoO11TfPNiOVQ3PWwnkGMojQbXR
         4Q9MiFBNscD/HsAMyC/aeHG/It/XnUJ0Xy5sOpb5FfRyMTMG6mUxE70EMIFW2JGnXtvC
         IVKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc;
        bh=ayYJXfoaVqamX/0fPfe8WakX1FqMZovXKfWsEclLPw4=;
        b=Ric0DtBQ/WUcHVeEN3TwhWxHwU9Bw5nAVOubByo2VN2cQIgy9yPxIFevSmhQ/pldwh
         JWEkNDEkpl2VvR5kzz1LXoVvCgX9OgtwUOesaj9z/i1Q8AF4SJiUf5Yz+HESLGcLBPut
         7bY99zxT0voudLoONTxQC9nWNZ9LJBqHln8SbYNLoJaRT9dSiQZ3HCQU3vcqiRhs4BpK
         4JzfQFv6md4g52AP8OT89KW2m8j8wdzLmFSEzSMzBP2Tjt6ATx3kvEf/kar8eMmVVdto
         hjEYoP5REmhSjkmCLlccFufeg+xtCtk3uF1WKPgViw+M/0lls7WWnzppyesBUrbiGHYK
         bpnA==
X-Gm-Message-State: ACgBeo30B2IxvtIJDTdYKQ6xtIiC6rWwhXIQg4mUT5jAi41e9mH89k2f
	ZFtcLfA/otBCxKaChlDJleUGgA==
X-Google-Smtp-Source: AA6agR6UAR8iU1I7U5Rgd1PQDG/Z095iGYhSbVz5sTV9dkyzLv3MYY0z2ai6OTON1jzMRLstM6xLrg==
X-Received: by 2002:a17:907:97d5:b0:733:1ce:9572 with SMTP id js21-20020a17090797d500b0073301ce9572mr3786919ejc.220.1661463329888;
        Thu, 25 Aug 2022 14:35:29 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id g25-20020aa7c599000000b0044795d36f12sm289657edq.55.2022.08.25.14.35.28
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Aug 2022 14:35:29 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: [PATCH v5] regulator: core: Resolve supply name earlier to
 prevent double-init
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
In-Reply-To: <20220825212842.7176-1-christian@kohlschutter.com>
Date: Thu, 25 Aug 2022 23:35:27 +0200
Cc: =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Markus Reichl <m.reichl@fivetechno.de>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>,
 wens@kernel.org
Message-Id: <395E54FA-15D2-48C7-A076-20E9B9398C22@kohlschutter.com>
References: <932DEB17-70FB-4416-80B3-C48A7C31848F@kohlschutter.com>
 <20220825212842.7176-1-christian@kohlschutter.com>
To: Mark Brown <broonie@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_143531_508521_7B612AD2 
X-CRM114-Status: UNSURE (   9.03  )
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

This needed some further rearrangement. Please validate v5 of the patch.

Any branch that has the v4 patch should revert that change and freshly re-apply the v5 patch.
I hope this simplifies merging into mainline.

Verified by
1. rebooting numerous times (no mmc errors, partitions on mmc SD card are properly detected, no hangs upon reboot, i.e., the change appears to work)
2. "cat /sys/kernel/debug/regulator/regulator_summary" now correctly shows regulators, regulator-dummy use count is 1
3. ensuring that no entries for "(null)-SUPPLY' were found in dmesg or /sys

Thanks,
Christian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
