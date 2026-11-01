Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3EE606A32C
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 11:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Lgod+4BX;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=XbiFhlDv
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8UD7GzMKjbXhqG3m719RtpQbTt4AzxhTWTzVwqSLsNs=; b=Lgod+4BXdStBCjeVRPcwpPykkR
	AdmlN5vbgVGvheWpttFfLhcEZTrFHvNNvKe1Zyecg9cuGFxYLpuLzUFpgrx6VGRNsWn9027jluAYW
	JiN9igprMplTrokqGdV1whALRe8UknZrGT4DhIR+98dTaQ/WPrfwXwEro6CwtuACOqNEWxNnm6vty
	t34E+3h2cCXLwaVOyXMxo/ALo77EzR79KaUrlht3e+LdX5FGQpWAQ9nuF/Q4bOHB9/9lDVT9dA8ej
	KYRj8A18lFajGO2mC1aZgmAXDiZvSKxeRY9mzmEyOtuyz9ciQrEK6QiVU/9FaJLJxXz02G5Yrlue+
	gGWYE4HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNTu6-0000000E9O8-0mLn;
	Sun, 01 Nov 2026 11:39:14 +0000
Received: from out162-62-57-252.mail.qq.com ([162.62.57.252])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNTu2-0000000E9NG-3zvf;
	Sun, 01 Nov 2026 11:39:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1793533145; bh=5uHMqeGCi5xEjxp7eaOraEh1Wivt/hows3ISRJRA5sc=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=XbiFhlDvI6WGK8Bsvq8LH7n0vu1J/qtX7NScBAtj1EFYUeJUcTbZLekmvevT4pDJi
	 L8u+hNlUKJHvEKRoq6/56YUkF+SlBI972ERJOauNdaKGMX/9/22qjutC2Pm6sbAO2q
	 NsM/l0TijMC1xEp+42hCMB2mLk/6qIvFEfR/1PJA=
X-QQ-XMRINFO: OWPUhxQsoeAVwkVaQIEGSKwwgKCxK/fD5g==
X-QQ-XMAILINFO: NkQGnmzToUyF0HQ0dYoXDCd8WAlZNEOU7fHjxUZdzBCyuy7mN4509D4z/oFOLF
	 mp8O3+8yYpU9EBj+4Wa1B83pgvDaatwTABEjm54x+Tj652l17NWrmh8FnTeBZ8iisLukH531dkto3
	 1epOliaRAypX17H3VMsY07+Wvgqk9e5GsxJ4YxIqwiAtoCfpizYbPcirRK8jekIKSsGuE+TM+9YLr
	 AU2XW7tYus4vIUesvhJ346t5rtR4aUwsMdXBsoOa2HZapPMreMozjuMFK5bwW/iIjH6dIxifSuROa
	 +qzyzbrr2KyhW9UgAZib5YZeiP8HHHXR0+g2tyFZ6e7kSjHC4GSi8qadlRcxWfoIR5YbpJi+I43fA
	 OD2k4aB2C2XdGdWmoTpgLRQsVfJiG8NntDpUwa4rOenYOo/WQzDKvvkNHWxamomjilq3bZLADTeXm
	 8UT/Y6ZANI7fF96dpgTxR2wGcbnrUJDKNfx9J3r/1MdwjKDY3cXo1BfesRbo0WvJI66tWuYxVYT97
	 hQypgWt0hBqWYcOMA672gQq2wzqQ/kq6hNVb5OrxmZ+cxcA0UrSzel4V+8Xqs6/i5LlttU7HCmeut
	 ebxATsgi8CqSuAmOXtopJ34fW38TwplM9fGbTsA5a9Of2Bv1srR0O9+f5EaRTIv//zZLppQMuVNW6
	 vVH1s2yzLyUrEKVp40L4CIUPPFcH/7XQaMu3Ex5YDVDryrVJJJKNvuvwCTN3ynaeI0Drar8n0vbAT
	 LhJek8pdik/8YpUYCFZkMwzPv3IlRP70FA42CdsVe2rb+LQsnLyw5wmYdFPVsEnmprnWWtwtexqlu
	 UT2TSA96rGmBUqgqHO3XCw7Py88VgePSu0+HZXrVQSgQLQM5N9HD7BwemBa8dcccqND2hCHjmd37A
	 dccK23A7bq37MpdZT1/dOdzhlFZNLWXRiORJiyZw/QMfJxce/w6qwZF3vnH92m84vgdj+w5oRVwHe
	 8LaTrvTY26iR0TVigTrR/KMO5P3nrpa8BfiZUAUPYScNOl0stTaTm0q9Z2KOE9Um9F2uhZDng9585
	 ksoGddMClOCvlkKFDu8STVWDH5fhueHuRwyvinVRN8h9L506imQ8DvXDZ698ulVpfx43u
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?TWFuaXZhbm5hbiBTYWRoYXNpdmFt?=" <mani@kernel.org>
Cc: "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bGludXgtZ3Bpbw==?=" <linux-gpio@vger.kernel.org>, "=?utf-8?B?bGludXgtcGh5?=" <linux-phy@lists.infradead.org>, "=?utf-8?B?bGludXgtdXNi?=" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH 21/27] phy: rockchip-inno-usb2: Add RK3572 support
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Sun, 1 Nov 2026 19:39:03 +0800
X-Priority: 3
Message-ID: <tencent_650649C624E17C043BA00BB1D4CFB8498105@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-21-0b0fd85a31ee@qq.com>
	<179353031285.2955.4272173079718014092.b4-reply@b4>
In-Reply-To: <179353031285.2955.4272173079718014092.b4-reply@b4>
X-QQ-mid: xmsezb41-0t1793533143tqyga0g4o
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_033911_529919_6C8CFF0D 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.6 (/)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	FROM_EXCESS_BASE64,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

>> + refclk = devm_clk_get(rphy->dev, "phyclk");
>> + if (IS_ERR(refclk))
>> + return PTR_ERR(refclk);
>
> Please insert a newline between each operation to improve readability.
>
>> + rate = clk_get_rate(refclk);
>> + if (rate != 24000000 && rate != 26000000)
>> + return -EINVAL;

I will add a blank line here and between the other operations to improve
readability.

>> + /* Set the normal line-state filter interval. */
>> + ret = regmap_write(rphy->grf, reg + 0x0020, 0x30100);
>> + if (ret)
>> + return ret;
>
> Here.
>
>> + /* Increase HS voltage by 5.89% and double pre-emphasis current. */
>> + ret = regmap_write(rphy->grf, reg + 0x000c, GENMASK(27, 24) | 0x0900);
>> + if (ret)
>> + return ret;
>
> And here.

I will add blank lines at these places too.

I am working on splitting the patches by subsystem, and I will
resubmit this patch as part of v2 after addressing these comments.

Thank you for your review!

Best regards,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
