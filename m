Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8E1DC32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 12:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gzwbx9qhuZ+9gOi9pDiD4zSRX/GQnNXf8Z6qh8cf3jw=; b=c2HB7N5YFSNNnj
	iywS7tHP1+WHWnhTedHsol8VQGNlwyFpu1lLzkWejWdOX4kevCxz9kgPCpvXdYkZrnu4/KhZyx5Jx
	+6A50pc2vpGiWE2KwlSoffWVF0TuaMgZ+3rOVkNIDcoESSBbuYghVmVO/e3sG3d+UncgN5qabfsKy
	Fa7n7YFFU7StI+scLQI5bkCZwp+FapDVmMFpMrY4v58o5Gxir1IszTn82WAxPkXVAbRH3CzqFLDnQ
	b8RMFoOBs02uIAi4gD1gET2xHNbJZnbzYtt9JowNL1Fglefxo//3cv8cN9hNhnXx7xuorg5qMuWmP
	SYLB0AzrZic0guFjuKxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQTJF-00612j-BE; Tue, 23 Aug 2022 12:47:09 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQTDy-005xxo-D8
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 12:41:43 +0000
Received: by mail-lj1-x22b.google.com with SMTP id bn9so5834004ljb.6
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Aug 2022 05:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=cyI6Nb+Lpql20jJvIrugwBnM2iazJtwpL+MJh5jvid4=;
        b=q3Fo8HyP0yxbMRrLy+xdVhMFNtEmJmByU9GZdikhrDCs30JN4tDr/RIzlQiME7jRn2
         sYCc7ydBLGKYxn/P3IOjAZ6QfqOeBzVjv1GF/pNy+YxjI1Ah6DT1xv6YuUaH4u4Km23w
         Xq0Jov4lQGSFZWRsAfoCIgMD3eCPcm124W3iMgPPwuoqqZXmMHSuGKD35rW7PmvyCN9J
         f5Lr81uMnYSH+ZGSv0offL7O5nBUFF/mGNxaSDdUZPyG+3weyRBml8OCaZdJnkbHbdCd
         AHQP0rGAxc1QrGhWeZXeB+hQK1ORTMUSLdAm5HNjRjisQDYcni3AJdXCCEQGcaa/1+za
         t7Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=cyI6Nb+Lpql20jJvIrugwBnM2iazJtwpL+MJh5jvid4=;
        b=FZRcB+PJbJsOLXCZwkr81VZcT6wb4ILTpNVNkVRRvGF9V1MpyhpGk0bHRGvAwyzxOQ
         n35mHpqTOICMR1cnb+w2UVgs87mvweJjwQb4OG8lGCTcCNGUhIkbgIylVa+h/P1O9gbb
         j41CHcbyvQYwzPYJSWkmIvarOC0C1WhAP/WAwfAZwNaPfz/np8s4k9nfrDyk0n1MnsCt
         Cb1CuheTmfzZQDzwBGQi35KpcJTQBhXbZkSX2NBFsJ7qyEFFL+ccjsNJg/9+foMKMz6L
         6MJuuf3/gKNueW6HBegVw4UK4XiGNCDR6W5bWhZxudY74YwTIDxfGyOgjuMSOxQ9L0ac
         Hadw==
X-Gm-Message-State: ACgBeo1DOuzAwJ3jxQmRvOPph8Xqqkhbez8l2R5pCFDt1j4tgH3aZsJq
	ePdZ49nZ2y9kgfwtfxuQ53+85g==
X-Google-Smtp-Source: AA6agR6TNLCRTysUgZMU3GceB2QqJBQ8Ev+BbUtFHZzcuSRQUyLVRafRkgZ0nk+1JeJK6snRoZqBSQ==
X-Received: by 2002:a2e:a889:0:b0:25e:3d55:b092 with SMTP id m9-20020a2ea889000000b0025e3d55b092mr7192999ljq.402.1661258498169;
        Tue, 23 Aug 2022 05:41:38 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id s13-20020a056512202d00b00492dbf809e8sm851894lfs.118.2022.08.23.05.41.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 05:41:37 -0700 (PDT)
Message-ID: <13858817-dbca-68b2-9905-cb7d0bc81cbd@linaro.org>
Date: Tue, 23 Aug 2022 15:41:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and
 RG503
Content-Language: en-US
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, pgwipeout@gmail.com,
 cphealy@gmail.com
References: <20220819222520.3069-1-macroalpha82@gmail.com>
 <20220819222520.3069-4-macroalpha82@gmail.com>
 <273e27e6-4def-2424-b838-de217f10e4a3@linaro.org>
 <SN6PR06MB534215A808939107AFDE5CFEA5709@SN6PR06MB5342.namprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <SN6PR06MB534215A808939107AFDE5CFEA5709@SN6PR06MB5342.namprd06.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_054142_500318_7ABCEE73 
X-CRM114-Status: GOOD (  10.03  )
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

On 23/08/2022 15:40, Chris Morgan wrote:
>>> +		regulators {
>>> +			vdd_logic: DCDC_REG1 {
>>
>> I commented here and there was no feedback, so please implement the change.
>>
> 
> Sorry I didn't explicitly call it out, I only made a note in the
> revision notes. The regulator names for the RK808 series are hard-coded, so
> I can't change them without modifying the driver (and every existing DTS that
> uses them).

OK.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
