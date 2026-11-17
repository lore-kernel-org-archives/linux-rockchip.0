Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6075606A31C
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 16:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=slcQk0pg;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=KEiFQFik
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=tGV1RzVFkp+7NaXjwYAIPvxzsnuSZyEUCVkjXy8nQvk=; b=slcQk0pgG7ZpJngjimS9VEqyAT
	KWp/SfTMwAvVuDUnVetQ0ysQ9fQZMH2DGH57eVeNmkhWwQ0IMQCMokfGO1e5I9IHyu214GM6t2FkI
	93uiZhFtgHMb/iBqPyl9eqFZyboFGtBQ3HM52iwIUAweyzzd3tT4smJCtm7tDo4qSQE/GvH1z3k/U
	ZyH54omVjDgdzA8A+bkpEVl0ArxcPjRi5GHhwI4mBQMGAdnAWj+bQuE4Abu8NYNRDpZ1aYwr1CHdP
	aTDZ20UTCGHK2blnE6lUTx4g7YazIbN9aBhAanFeiACkSxV69Uh4b4G+gawLg87JbNXMEodYu1Lqe
	OIOOI7Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTLnm-00000006OKc-2dpU;
	Tue, 17 Nov 2026 16:12:58 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTLnh-00000006OIk-3bQt
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Nov 2026 16:12:55 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1794931963; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=MgOHWAj5XE8K0ZM4dpF5XMNexXAnmpIJ22CkRU12AZeaADrNwrf8OuiBkMan97v+4uLxTDfvqT6rnk/gbSImUycf8qN1CEj58Te1Vg07vKVkf//wG3p1blxQMTYZtHG38XhdMHQ+LC00sc/Dmf/cLeyh3mR/nmYY64N9aEVv2So=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1794931963; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=BytRtfaLGfvvVXgsafcGA/NpSLeZVUmNdMkFX+1ckpo=; 
	b=PXEqmBBfDhf1y20KZ3gHWk099aQV7Ep39Dz+i1nsayC2euMeIn+J38/3wj9CjOixOs6JxeJ1hAoFAAvNMZAoVlskrtpinLSlfNXvrdj4N5REr/uELqCcBBm0TzKbSwA8ftJXP9oDu8vpzoBXQUSsoTpGp4HgdU/UTBpBtA3qAmk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=michael.riesch@collabora.com;
	dmarc=pass header.from=<michael.riesch@collabora.com>
DKIM-Signature: a=rsa-sha256; b=KEiFQFikCfWia1pepdG0mMUms+RTrMzQX4TKoDM56XmjS0YO7p7BWj4r1QpnapnWZkmFfesqh60i0aDy/sy82KlTjfXJ2F/B7sCGIpjjNKmuPWcd464PqsItpwS+KTtYWs6wWZZNAXkdcqQpP8U3zLmbdWP7L7nVQztmoU4TQz8=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=BytRtfaLGfvvVXgsafcGA/NpSLeZVUmNdMkFX+1ckpo=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 1794931960251635.8971346252681;
	Tue, 17 Nov 2026 08:12:40 -0800 (PST)
Message-ID: <55886a47-47a5-4f52-97d8-69b5142ecb28@collabora.com>
Date: Tue, 17 Nov 2026 17:12:36 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] media: rockchip: rkcif: Don't reset the hardware
 in runtime suspend
To: Mehdi Djait <mehdi.djait@linux.intel.com>
Cc: linux-media@vger.kernel.org, paul.elder@ideasonboard.com,
 daniel@makrotopia.org, linux-rockchip@lists.infradead.org,
 stable@vger.kernel.org
References: <20261112183208.2688580-1-mehdi.djait@linux.intel.com>
 <20261112183208.2688580-2-mehdi.djait@linux.intel.com>
 <df61d7d2-7ad8-4b68-b3a0-7a03513ab5b7@collabora.com>
 <avsBed-E2RPJnZ6k@mdjait-mobl> <avwZpcF8fti2vVI9@mdjait-mobl>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <avwZpcF8fti2vVI9@mdjait-mobl>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_081253_964876_C41A0F9F 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: -0.8 (/)
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
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Mehdi,

On 11/17/26 10:09, Mehdi Djait wrote:
> On Mon, Nov 16, 2026 at 03:30:33PM +0100, Mehdi Djait wrote:
>> Hi Michael,
>>
>> On Mon, Nov 16, 2026 at 11:58:35AM +0100, Michael Riesch wrote:
>>> Hi Mehdi,
>>>
>>> On 11/12/26 19:32, Mehdi Djait wrote:
>>>> The reset in the runtime suspend also resets the VICAP IOMMU.
>>>>
>>>> When the IOMMU driver accesses the IOMMU registers inside the delay window
>>>> between the assert and deassert, e.g. in rk_iommu_zap_lines() to shootdown
>>>> IOTLB entries, the system hangs.
>>>>
>>>> Drop the reset and the now unused reset control.
>>>
>>> I agree that the current situation is nothing more than a crude hack
>>> that happened to work in most cases. But I doubt simply removing the
>>> reset is the correct solution. Recently, I saw some downstream patch
>>> that makes the reset a shared one, which seems like the right thing to
>>> do here. What would you think about that?
>>
>> Do you have a link for these patches ?

Unfortunately they are not yet public, but I presume I have to address
that issue anyway soon. May I ask you for a bit of patience?

>> I also agree that this patch will not be the solution that will go in
>> but the situation needs to change.
>>
>> The VICAP_GLB_CTRL register does expose this:
>> reset the VICAP(except MMU/AXI MASTER/REG FILE)
>>
>> The Rockchip-bsp kernel exports the disable and enable functions of the
>> iommu driver and calls them in the rkcif driver, see:
>> https://github.com/rockchip-linux/kernel/blob/develop-6.1/drivers/media/platform/rockchip/cif/capture.c#L7269
>>
> 
> I mean, I of course don't think this is a solution to be considered, but
> this is what I found for now..

Yeah I wouldn't really like to go in *that* direction unless it is
absolutely necessary...

Best regards,
Michael

> 
> --
> Kind regards
> Mehdi Djait


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
