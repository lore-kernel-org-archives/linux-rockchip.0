Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3E7D606A31C
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 01:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1BGUh3yy;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pardini.net header.i=@pardini.net header.a=rsa-sha256 header.s=google header.b=IpNJj357
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=aE1z5TzvOO9nqybapOE0X3wyyJXBkryVhpJHfhpvzNA=; b=1BGUh3yyN1we60subFGTTPwGNB
	s1671+MhxamRDnKVYWs/6V330VQu4NnsAmwY05/3iGDCHEfG/xezNyukttzDuTaz8EHALZDm+DIWu
	aAXl9t27mGAq/dU/C7xjmQKKE5V/iW1/0XcbvYA+zwHzrpqZKkp7OyJHE5f200dSHJa1i3n6uKEbh
	/VHI8qv7gww0SYsAIG4icUpoRrc/WC4+LmU0fOS5TzW0sMGfaDcZBSPOSWD6ve2Q5CRuVeyOq9UBX
	gagRjKwyOULzGE7eODutVbtR7XhqiUfb4LsdUIICk9CP+tp0HBSHCBEKas1alj9cTqzJ44GF5A/Yp
	b4uRymBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQahD-000000025QF-1f15;
	Tue, 10 Nov 2026 01:30:47 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQah5-000000025OH-0MYs
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Nov 2026 01:30:46 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-c4d30639709so187516166b.0
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2026 17:30:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1794274235; x=1794879035; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6cr9ziobUF9AnItm9jr9xGM9l0DDOZ1SgmvFxuND5DU=;
        b=IpNJj357n6YbIqeRxF8M2l9WmlTOwRl4kvjpkTX3MeGlVVZZOWBMEy4vnWlMIH8RB5
         9JBonqzbhviBmVRQqc1YnR5kLEzI5uv5GNFfVcXggtRbk6Ryiyk2fMxSWKh2++sfQ4w7
         GiUg/AVdg+W5VlBbfxm3nXAdGGZCh6imzy6Rc/1zGzGp06pxwF7H9FNh8sAZLVMXy9ws
         rkMKDH4D41/abfnkN31ojiLQ/7iw9VTLKJOe24nP6NIAD704d/qhtOWg6xp0kSmhB1/i
         C3/NDDmL4k0plSCv3+hp5n27jfgZPg6xvPfXxU9SVOwL7H6yweK7DmKTD5BGcaHx/1Lr
         Dx6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794274235; x=1794879035;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6cr9ziobUF9AnItm9jr9xGM9l0DDOZ1SgmvFxuND5DU=;
        b=I9JB7t+T7WjJXaPYASzDn7WjBmv/E68JhJXaIp5jWwynP8BeosaGbCBM2rxzo/aThZ
         gZK3+HDKiabxH2JAZCbiyHHAgRzbgjmCIh8KNw7Yxv79Rbx1KEEsIuQa8w+BAhL9iPRk
         H5qXbqTY9QCTL3YnzCJlWaPU7grFUW/Lhj6Lxzt7Z0HVMeODOs6Eo4PrzoaBtwvrVt5b
         ijFgX1bXKzVq0IV9HM2jKTFkd9lcm5DEcBsnRHIeVe20kJGJ7fhsmoMF5e6SAAIW29uh
         yEHHd1CTFg+GU/a8k02SAk9ppRuLMeLSju54wcLWMKs/q20ajkvlr83C8nBixA/DJchJ
         fV/w==
X-Forwarded-Encrypted: i=1; AL+hErET8icshxeTyl3CdncyuwUbsup2vBWc4Quso5OpVqZkd63vE99yGqCk3NE73rQ/cuFQxtDvdC7T4JzWZtfhdg==@lists.infradead.org
X-Gm-Message-State: APuU4Z+r8AFhQ1Wg26TrBEvlIc4bFaO4pVRuNbzvmtMhqutTvPAluLkr
	o9jGQeeL+U5d6kdZXVeYS2sBOV4EA4kyD8qqTd9YTJvvVc6yXmlKIhRCbouGegz5Pw==
X-Gm-Gg: AYBFou1IsW53LFBfh5ZJwr4reyPmp0xmSZr6GS/pJTe2omgGWP8B+XXW+690Ms+9hQB
	A3tz2hY3h/f+8pdJaZlfyc3gkRvJvjW1cMlrsB3350pRimBZI++BoeiENxk1hvo6eolCCdDfJts
	B3RdNnKhgoxeEi0miEnMasj+AyDbo0qmbRGEM/r/aanPVld3NGAPaT+bMg8Gmm1mjnNKTRcb2ta
	mtjoGQy1lnBIKnOq5fwMq4RCuKbnW/Goit7zo/G6wtf7P9ECsNCBQ7D0LAS4JbCDlRTU7UO8i7H
	Rzf0aQV7JTPucdzvHY4H4HEjw/x64ib0mLJKd7gj93pTo013uYNYAt+zzX+vv8hDKski4yhy9ve
	R/yPN857/MV46XQh17prrHAUFqXPqHLR4pKzuMAXNJyxm0m3sG1I3SiY/kBbxQwP2RdthYFXBk/
	qT3vCU3eOYFBZ1Sc6VEePx50tJr/3dIRUrD+Y7xWCRUFNtjWi0Lk3W8QS3gy4eYcd0GxwSLPsSM
	466xjHr/rgYxwgo+ljWw7z/Jxk7UVO+/zMP8bc45gVzC2ejNNnEDxajaXDD7u3OBsqxwduzDWbU
	/LO//fiKrkz3op3NO4KYApaxRa0/bBvvfgv8c9W/2m1iwLFU0oVWpdpuT1Fw2J/Rk8PQw32rBRD
	OFMKHGLALvzTZ3k7SAMA3IvmOPPuq9yg85yP0ECDiX6b74ENIPiXwmysw5kSFvrfHO0T7Eg==
X-Received: by 2002:a17:906:c108:b0:c40:d920:747c with SMTP id a640c23a62f3a-c5048f4046fmr83137966b.7.1794274235103;
        Mon, 09 Nov 2026 17:30:35 -0800 (PST)
Received: from ?IPV6:2a02:a466:4d7a:0:65ed:a8e1:a329:4b? (2a02-a466-4d7a-0-65ed-a8e1-a329-4b.fixed6.kpn.net. [2a02:a466:4d7a:0:65ed:a8e1:a329:4b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c504a5701a1sm41990066b.21.2026.11.09.17.30.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2026 17:30:34 -0800 (PST)
Message-ID: <f225b5f6-13eb-40d0-a9ca-7efab0e6876c@pardini.net>
Date: Tue, 10 Nov 2026 02:30:33 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: rockchip: naneng-combphy: fix RK3588 SATA pipe_con1
 register offset
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Andrew Powers-Holmes <aholmes@omnom.net>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Yifeng Zhao <yifeng.zhao@rock-chips.com>
References: <20261109-rk3588-combphy-sata2-6g-v1-1-e9135c91de6a@pardini.net>
 <avJULe_00cHwMh4X@venus>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <avJULe_00cHwMh4X@venus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_173039_179163_F7D90C3C 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Sebastian,

On 10/11/2026 00:29, Sebastian Reichel wrote:
> The patch is 1:1 from Yifeng Zhao with a better commit message.
> You should keep him as the patch author with his Signed-off-by
> followed by your Signed-off-by. Feel free to also add my R-b tag.

Thanks a lot for the review and for the directions. I've prepared v2
along those lines: Yifeng Zhao as the author with his Signed-off-by,
the BSP sentence (and Link:) dropped, the pcie3x2 link reset grant note 
moved into the commit message, the notes below the fold trimmed, and 
your R-b added.

I'll wait a bit before sending v2, in case anyone else wants to chime
in; Sashiko seems happy about v1.

T-b's from folks with a &sata2 board (Firefly ITX-3588J / Firefly 
ROC-RK3588-RT, from a quick search) would be nice too; the board I found 
it on (Mixtile Blade3) is not yet sent upstream (I'm still fighting its 
2x FUSB302 and PD powering troubles there).

Thanks again,
Ricardo


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
