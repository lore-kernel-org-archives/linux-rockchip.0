Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A1D3C282D1
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 10:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdysYsv7GU7oaNAJFbisTUWBQRNXhHbAPIH3fq9qsBs=; b=t26UZ0eWzb+VEg
	81itLhaRBNvb3eGsRo6TZlwcG9x4nbVbPDYKC8VB0hd1gKKd6S5bTlao7M0ZwuEyzBPBIcL/sgAW5
	nAqQeEs2XqzVOiQQw7HPonGgQCeMb1pp7Gl7195sXojrzH2nnsQBnPhsqJaOY0wJNEuCv/ofkMhPS
	7Wr4sqEBqJqUabQ1zw4tEeln88Vv5Rgs/19xT3h28b4ES3fi4FJxEN3w4+7ZjcbnXy6qu8LZG2e2J
	WRqzp3/ZbChnQC4lqHNuNsVRFrclmb2Gz87B2pAEy8t/NpGQ9vFlWStXkPQlDS2citCToYYtlIhOx
	JvNGoYHi1xwj29KSbV5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trDqG-00000000MEr-1Hrb;
	Sun, 09 Mar 2025 10:25:08 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trDj3-00000000LJH-11Gk;
	Sun, 09 Mar 2025 10:17:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1741515459;
	bh=a9ZjEQJCPX7OdmrFZfTFLcOSWucp97wa0eLCzSNjgwg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jvwKJxkMx/ByKyXBNBK+i8lUNXRVXN2/9NOJ5FIU4+qitYuEAjgk9XHX4hTeUZMDd
	 dvW+OMApYkM5UlJJL8YZm9RPUrAS+JnhndtyZ9B1HV7Si1skqHRifyYpiLzwJUuDuH
	 SinPFa9jSA+4v6G9t7swwcDTPRzVpfPnFOkfKgkdTF1h0RpbQkAmEyXrmWvre/Lg3Z
	 ej4XQbzdS2B2mo7LL0BE4ywCPbIN52O9H1ZOFgr7G8sWIDSE48Lgdl7IjN2xtT53PY
	 gPODhO07J0ktW8WPeDqqLfl7H51yC45pQgRldMGav/QXr1r+76T83EPLkOXR/jznYF
	 GEVBOMTA4m8PQ==
Received: from [192.168.1.90] (unknown [84.232.140.93])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4B49D17E0343;
	Sun,  9 Mar 2025 11:17:39 +0100 (CET)
Message-ID: <f7fdf5de-90aa-4753-9500-c30339545adf@collabora.com>
Date: Sun, 9 Mar 2025 12:17:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 03/12] phy: rockchip: samsung-hdptx: Fix clock ratio
 setup
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Algea Cao <algea.cao@rock-chips.com>, Sandor Yu <Sandor.yu@nxp.com>,
 Maxime Ripard <mripard@kernel.org>, kernel@collabora.com,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com>
 <20250308-phy-sam-hdptx-bpc-v5-3-35087287f9d1@collabora.com>
 <CAA8EJprBcGz0tZ5SDVC_WK2bzjXZAtOj+LfGnSxmwktvaQw=VQ@mail.gmail.com>
 <f1e33b02-5646-4219-98ac-c09e31d8215b@collabora.com>
 <CAA8EJprNTUuOwu__GcRhYmNi5rT0+3r16fs+n7Gdy3sjgTp+nw@mail.gmail.com>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <CAA8EJprNTUuOwu__GcRhYmNi5rT0+3r16fs+n7Gdy3sjgTp+nw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_031741_434001_83BE7C61 
X-CRM114-Status: GOOD (  11.21  )
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

On 3/9/25 12:12 PM, Dmitry Baryshkov wrote:
> On Sun, 9 Mar 2025 at 12:11, Cristian Ciocaltea
> <cristian.ciocaltea@collabora.com> wrote:
>>
>> On 3/9/25 11:17 AM, Dmitry Baryshkov wrote:
>>> On Sat, 8 Mar 2025 at 14:21, Cristian Ciocaltea
>>> <cristian.ciocaltea@collabora.com> wrote:
>>>>
>>>> The switch from 1/10 to 1/40 clock ratio must happen when exceeding the
>>>> 340 MHz rate limit of HDMI 1.4, i.e. when entering the HDMI 2.0 domain,
>>>> and not before.
>>>
>>> Am I correct that the only functional change is a switch from
>>> greater-or-equal to simple greater?
>>
>> Yes.
> 
> If you were to repost the series for any reason, could you please
> spell that explicitly in the commit message. If not, it's fine.

Sure, I'll handle it in v6.

> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Thanks,
Cristian
 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
